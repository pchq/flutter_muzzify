import 'package:flutter/material.dart';
import '/l_presentation/widgets/cards/artist_card.dart';

import '/models/artist.dart';

class ArtistsList extends StatelessWidget {
  final List<Artist> list;

  const ArtistsList({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      padding: const EdgeInsets.all(10.0),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 1.3,
      children: list.map((item) => ArtistCard(artist: item)).toList(),
    );
  }
}
