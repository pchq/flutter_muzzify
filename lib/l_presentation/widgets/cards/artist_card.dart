import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '/core/cover_config.dart';
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
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                  CoversConfig.path(Cover.artistSm, artist.id),
                ),
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.all(5),
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
