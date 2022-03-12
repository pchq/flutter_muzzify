import 'package:flutter/material.dart';
import '/core/cover_config.dart';
import '/l_presentation/widgets/cover_image.dart';
import '/l_presentation/widgets/player_bottom_sheet.dart';
import '/l_presentation/app_theme.dart';
import '/models/track.dart';

class TrackCard extends StatelessWidget {
  final Track track;
  final Color background;
  final bool showArtistName;
  final bool canAddToCollection;

  const TrackCard(
    this.track, {
    Key? key,
    this.background = AppTheme.colorBlackMatte,
    this.showArtistName = false,
    this.canAddToCollection = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return PlayerBottomSheet(
              track,
              showToCollectionButton: canAddToCollection,
            );
          },
          useRootNavigator: true,
        );
      },
      child: Card(
        margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        clipBehavior: Clip.antiAlias,
        color: background,
        child: Row(
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: CoverImage(
                CoversConfig.path(Cover.albumSm, track.albumId),
                errorChild: const Center(
                  child: Icon(Icons.music_note_outlined),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (showArtistName)
                      Text(
                        track.artistName,
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    Text(
                      track.name,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Album: ${track.albumName}',
                      style: const TextStyle(
                        fontSize: 10,
                        color: AppTheme.colorGreyMiddle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.play_circle_outline,
                size: 30,
                color: AppTheme.colorFirm,
              ),
            )
          ],
        ),
      ),
    );
  }
}
