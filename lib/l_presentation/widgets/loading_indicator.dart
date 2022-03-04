import 'package:flutter/material.dart';
import '/l_presentation/app_theme.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 50,
        height: 50,
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: AppTheme.colorBlackMatte,
          borderRadius: BorderRadius.circular(50),
        ),
        child: CircularProgressIndicator(
          strokeWidth: 3,
        ),
      ),
    );
  }
}
