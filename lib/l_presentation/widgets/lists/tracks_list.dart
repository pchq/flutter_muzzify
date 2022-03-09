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
  bool _allLoaded = false;
  late final _bloc = context.read<TrackCubit>();

  @override
  void initState() {
    _bloc.load(widget.artistId, isFirst: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Track> tracks = [];

    return BlocConsumer<TrackCubit, TrackState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (error) {
            ScaffoldMessenger.of(context)
              ..removeCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text(error.message)));
          },
        );
      },
      builder: (context, state) {
        state.whenOrNull(
          loading: () {
            _isLoading = true;
          },
          success: (items, allLoaded) {
            tracks = items;
            _allLoaded = allLoaded;
            _isLoading = false;
          },
          error: (error) {
            _isLoading = false;
          },
        );
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) => TrackCard(tracks[index]),
              itemCount: tracks.length,
            ),
            const SizedBox(height: 20),
            if (!_allLoaded)
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 100),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: SizeTransition(
                      sizeFactor: animation,
                      axis: Axis.horizontal,
                      child: child,
                    ),
                  );
                },
                child: _isLoading
                    ? const LoadingIndicator()
                    : MaterialButton(
                        onPressed: () {
                          _bloc.load(widget.artistId);
                        },
                        child: const Text(
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
              ),
          ],
        );
      },
    );
  }
}
