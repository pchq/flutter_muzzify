import 'package:flutter/material.dart';

import '/l_presentation/app_theme.dart';

class CoverImage extends StatelessWidget {
  final String imgPath;
  final Widget? errorChild;

  const CoverImage(
    this.imgPath, {
    Key? key,
    this.errorChild,
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
          child: errorChild,
        );
      },
    );
  }
}
