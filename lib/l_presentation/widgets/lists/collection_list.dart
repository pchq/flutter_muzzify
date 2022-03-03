import 'package:flutter/material.dart';
import 'package:muzzify/l_presentation/app_theme.dart';
import '/l_presentation/widgets/cards/track_card.dart';

import '/models/track.dart';

class ColletionList extends StatelessWidget {
  final List<Track> list;

  const ColletionList({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) => TrackCard(
        list[index],
        showArtistName: true,
        background: AppTheme.colorGreyDeep,
        canAddToCollection: false,
      ),
      itemCount: list.length,
    );
  }
}
