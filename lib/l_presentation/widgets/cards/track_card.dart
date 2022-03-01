import 'package:flutter/material.dart';
import '/l_presentation/app_theme.dart';
import '/l_presentation/widgets/player.dart';
import '/models/track.dart';

class TrackCard extends StatelessWidget {
  final Track track;
  const TrackCard({
    Key? key,
    required this.track,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(track);
    return GestureDetector(
      onTap: () {
        _showModal(context);
      },
      child: Card(
        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(const Radius.circular(10.0)),
        ),
        clipBehavior: Clip.antiAlias,
        color: AppTheme.colorBlackMatte,
        child: Row(
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: _AlbumImg(
                'https://api.napster.com/imageserver/v2/albums/${track.albumId}/images/70x70.jpg',
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      track.name,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      track.albumName,
                      style: TextStyle(
                        fontSize: 10,
                        color: AppTheme.colorGreyMiddle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
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

  void _showModal(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      margin: EdgeInsets.only(right: 15),
                      height: 100,
                      width: 100,
                      child: _AlbumImg(
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
                            style: TextStyle(
                              fontSize: 10,
                              color: AppTheme.colorGreyMiddle,
                            ),
                          ),
                          Text(
                            track.name,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: MaterialButton(
                              onPressed: () {
                                // FirebaseHelper.addTrack(track);
                              },
                              child: Text(
                                'В коллекцию',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              color: AppTheme.colorFirm,
                              height: 30,
                              minWidth: 120,
                            ),
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
      },
    );
  }
}

class _AlbumImg extends StatelessWidget {
  final String imgPath;

  const _AlbumImg(this.imgPath);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imgPath,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          color: AppTheme.colorGreyMiddle,
          child: Center(
            child: Icon(Icons.music_note_outlined),
          ),
        );
      },
    );
  }
}
