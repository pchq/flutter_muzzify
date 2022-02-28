import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/models/artist.dart';
import '/l_domain/bloc/artist/artist_cubit.dart';
import '/l_presentation/widgets/lists/artists_list.dart';
import '/l_presentation/widgets/form/search_field.dart';
import '/l_presentation/widgets/loaders/loading_indicator.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool _isLoading = false;
  final ScrollController _scrollCtrl = ScrollController();
  final TextEditingController _searchCtrl = TextEditingController();
  final List<Artist> _artists = [];
  late final _bloc = context.read<ArtistCubit>();
  String _curQuery = '';

  @override
  void initState() {
    super.initState();

    _scrollCtrl.addListener(() {
      if (_scrollCtrl.offset == _scrollCtrl.position.maxScrollExtent && !_isLoading) {
        _loadArtists();
      }
    });

    _searchCtrl.addListener(() async {
      if (_curQuery != _searchCtrl.text) {
        _curQuery = _searchCtrl.text;
        await Future.delayed(Duration(milliseconds: 1000));

        _artists.clear();
        _loadArtists();
      }
    });
  }

  void _loadArtists() {
    _bloc.search(_searchCtrl.text);
  }

  @override
  void dispose() {
    _scrollCtrl.dispose();
    _searchCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtistCubit, ArtistState>(
      builder: (context, state) {
        state.whenOrNull(
          initial: () {
            _loadArtists();
          },
          loading: () {
            _isLoading = true;
          },
          searchSuccess: (items) {
            _artists.addAll(items);
            _isLoading = false;
          },
          error: (error) {
            _isLoading = false;

            // ToDo
            print('=== ArtistCubit UI error: $error');
          },
        );

        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            automaticallyImplyLeading: false,
          ),
          body: SingleChildScrollView(
            controller: _scrollCtrl,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SearchField(controller: _searchCtrl),
                if (_artists.isNotEmpty)
                  ArtistsList(
                    list: _artists,
                  ),
                if (_isLoading) LoadingIndicator(),
              ],
            ),
          ),
        );
      },
    );
  }
}
