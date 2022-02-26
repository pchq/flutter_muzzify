import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muzzify/models/artist.dart';

import '../widgets/lists/artists_list.dart';
import '../widgets/loaders/loading_indicator.dart';
import '/l_domain/bloc/artists/artist_cubit.dart';

class ArtistsPage extends StatefulWidget {
  const ArtistsPage({Key? key}) : super(key: key);

  @override
  State<ArtistsPage> createState() => _ArtistsPageState();
}

class _ArtistsPageState extends State<ArtistsPage> {
  bool _isLoading = true;
  final ScrollController _scrollCtrl = ScrollController();
  final List<Artist> _artists = [];
  late final _bloc = context.watch<ArtistCubit>();

  @override
  void initState() {
    super.initState();

    _scrollCtrl.addListener(() {
      if (_scrollCtrl.offset == _scrollCtrl.position.maxScrollExtent && !_isLoading) {
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
    return BlocBuilder<ArtistCubit, ArtistState>(
      builder: (context, state) {
        state.when(
          initial: () {
            _bloc.loadTop();
          },
          loading: () {
            _isLoading = true;
          },
          success: (items) {
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
            title: Text('Популярные исполнители'),
          ),
          body: SingleChildScrollView(
            controller: _scrollCtrl,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
