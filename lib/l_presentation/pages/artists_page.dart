import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/models/artist.dart';
import '/l_presentation/widgets/lists/artists_list.dart';
import '/l_presentation/widgets/loading_indicator.dart';
import '/l_domain/bloc/artist/artist_cubit.dart';

class ArtistsPage extends StatefulWidget {
  const ArtistsPage({Key? key}) : super(key: key);

  @override
  State<ArtistsPage> createState() => _ArtistsPageState();
}

class _ArtistsPageState extends State<ArtistsPage> {
  bool _isLoading = true;
  bool _allLoaded = false;
  final ScrollController _scrollCtrl = ScrollController();
  late final _bloc = context.read<ArtistCubit>();

  @override
  void initState() {
    super.initState();

    _scrollCtrl.addListener(() {
      if (_scrollCtrl.offset == _scrollCtrl.position.maxScrollExtent &&
          !_isLoading &&
          !_allLoaded) {
        _bloc.loadTop();
      }
    });
  }

  @override
  void dispose() {
    _scrollCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Artist> artists = [];

    return BlocBuilder<ArtistCubit, ArtistState>(
      builder: (context, state) {
        state.whenOrNull(
          initial: () {
            _bloc.loadTop();
          },
          loading: () {
            _isLoading = true;
          },
          topSuccess: (items, allLoaded) {
            artists = items;
            _isLoading = false;
            _allLoaded = allLoaded;
          },
          error: (error) {
            _isLoading = false;

            // ToDo
            print('=== ArtistCubit UI error: $error');
          },
        );

        return Scaffold(
          appBar: AppBar(
            title: Text('Популярные исполнители'),
          ),
          body: SingleChildScrollView(
            controller: _scrollCtrl,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (artists.isNotEmpty)
                  ArtistsList(
                    list: artists,
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
