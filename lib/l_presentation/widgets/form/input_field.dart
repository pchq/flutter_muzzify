import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool enabled;
  final bool isPasswd;

  const InputField({
    Key? key,
    required this.controller,
    required this.label,
    required this.enabled,
    this.isPasswd = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      obscureText: isPasswd,
      enableSuggestions: !isPasswd,
      autocorrect: !isPasswd,
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: const UnderlineInputBorder(),
      ),
    );
  }
}
