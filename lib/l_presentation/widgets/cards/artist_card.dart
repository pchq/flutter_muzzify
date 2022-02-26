import 'package:flutter/material.dart';
import '/l_presentation/app_theme.dart';
import '/models/artist.dart';

class ArtistCard extends StatelessWidget {
  final Artist artist;
  const ArtistCard({
    Key? key,
    required this.artist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(const Radius.circular(10.0)),
      ),
      clipBehavior: Clip.antiAlias,
      child: GestureDetector(
        onTap: () => {},
        child: Hero(
          tag: artist.id,
          child: Material(
            color: AppTheme.colorDeepBlack,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: Image.network(
                      // ToDo: refuck hardcode
                      'https://api.napster.com/imageserver/v2/artists/${artist.id}/images/150x100.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: AppTheme.colorGreyMiddle,
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.all(5),
                  child: Center(
                    child: Text(artist.name),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
