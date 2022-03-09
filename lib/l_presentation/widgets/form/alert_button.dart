import 'package:flutter/material.dart';
import '/l_presentation/app_theme.dart';

class AlertButton extends StatelessWidget {
  final void Function() onPressed;
  final String label;
  const AlertButton({
    Key? key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: const BorderSide(color: AppTheme.colorFirm),
      ),
      minWidth: 110,
      child: Text(
        label,
        style: const TextStyle(
          color: AppTheme.colorBrightWhite,
          fontSize: 12,
        ),
      ),
    );
  }
}
