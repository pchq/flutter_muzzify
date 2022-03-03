import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/l_domain/bloc/track/track_cubit.dart';
import '/l_presentation/app_theme.dart';
import '/l_presentation/widgets/cards/track_card.dart';
import '/l_presentation/widgets/loading_indicator.dart';
import '/models/track.dart';

class TracksList extends StatefulWidget {
  final String artistId;

  const TracksList({
    Key? key,
    required this.artistId,
  }) : super(key: key);

  @override
  State<TracksList> createState() => _TracksListState();
}

class _TracksListState extends State<TracksList> {
  bool _isLoading = true;
  final List<Track> _tracks = [];
  late final _bloc = context.read<TrackCubit>();

  @override
  void initState() {
    _bloc.load(widget.artistId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrackCubit, TrackState>(
      builder: (context, state) {
        state.whenOrNull(
          loading: () {
            _isLoading = true;
          },
          success: (items) {
            _tracks.addAll(items);
            _isLoading = false;
          },
          error: (error) {
            _isLoading = false;

            // ToDo
            print('=== TrackList Cubit UI error: $error');
          },
        );
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) => TrackCard(_tracks[index]),
              itemCount: _tracks.length,
            ),
            if (!_isLoading && !_bloc.loadedAll)
              MaterialButton(
                onPressed: () {
                  _bloc.load(widget.artistId);
                },
                child: Text(
                  'Загрузить еще',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: AppTheme.colorFirm,
                height: 50,
                minWidth: 160,
              ),
            if (_isLoading) LoadingIndicator(),
          ],
        );
      },
    );
  }
}
