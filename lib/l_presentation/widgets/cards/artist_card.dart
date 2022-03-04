import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '/routing/app_router.dart';
import '/l_presentation/widgets/cover_image.dart';
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
        onTap: () {
          context.router.push(ArtistRoute(artist: artist));
        },
        child: Material(
          color: AppTheme.colorDeepBlack,
          child: Column(
            children: [
              Expanded(
                child: CoverImage(
                  // ToDo: refuck hardcode
                  'https://api.napster.com/imageserver/v2/artists/${artist.id}/images/150x100.jpg',
                ),
              ),
              Container(
                height: 50,
                padding: EdgeInsets.all(5),
                child: Center(
                  child: Text(
                    artist.name,
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
