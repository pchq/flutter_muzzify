import 'package:flutter/material.dart';
import '/l_presentation/app_theme.dart';
import '/l_presentation/widgets/cover_image.dart';
import '/l_presentation/widgets/form/to_collection_button.dart';
import '/l_presentation/widgets/player.dart';

import '/models/track.dart';

class PlayerBottomSheet extends StatelessWidget {
  final Track track;
  final bool showToCollectionButton;
  const PlayerBottomSheet(
    this.track, {
    Key? key,
    this.showToCollectionButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.colorGreyDeep,
      height: 250,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  margin: const EdgeInsets.only(right: 15),
                  height: 100,
                  width: 100,
                  child: CoverImage(
                    'https://api.napster.com/imageserver/v2/albums/${track.albumId}/images/170x170.jpg',
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        track.albumName,
                        style: const TextStyle(
                          fontSize: 10,
                          color: AppTheme.colorGreyMiddle,
                        ),
                      ),
                      Text(
                        track.name,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      if (showToCollectionButton)
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: ToCollectionButton(track: track),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Player(mp3url: track.mp3Url),
            ),
          ],
        ),
      ),
    );
  }
}
