import 'package:flutter/material.dart';

import '/l_presentation/app_theme.dart';

class CoverImage extends StatelessWidget {
  final String imgPath;

  const CoverImage(
    this.imgPath, {
    Key? key,
  }) : super(key: key);

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
