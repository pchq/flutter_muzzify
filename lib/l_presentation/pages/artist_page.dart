import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import '/l_presentation/widgets/lists/tracks_list.dart';
import '/l_presentation/app_theme.dart';
import '/models/artist.dart';

class ArtistPage extends StatelessWidget {
  final Artist artist;
  const ArtistPage({
    Key? key,
    required this.artist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final imgHeight = screenSize.height * .45;
    return Container(
      color: AppTheme.colorDeepBlack,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: Icon(
                Icons.chevron_left,
                color: AppTheme.colorFirm,
                size: 48,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(artist.name),
              background: Stack(
                children: [
                  Image.network(
                    // ToDo: refuck hardcode
                    'https://api.napster.com/imageserver/v2/artists/${artist.id}/images/633x422.jpg',
                    fit: BoxFit.cover,
                    height: imgHeight,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: AppTheme.colorGreyMiddle,
                      );
                    },
                  ),
                  Container(
                    height: imgHeight,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [
                          .26,
                          1,
                        ],
                        colors: [
                          AppTheme.colorDeepBlack.withOpacity(0),
                          AppTheme.colorDeepBlack,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            expandedHeight: imgHeight - 25,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Html(
                data: artist.bio,
                style: {
                  '*': Style(
                    fontSize: FontSize.large,
                    lineHeight: LineHeight.number(1.5),
                    color: AppTheme.colorGreyMiddle,
                  ),
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: TracksList(artistId: artist.id),
          ),
        ],
      ),
    );
  }
}
