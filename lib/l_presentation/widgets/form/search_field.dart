import 'package:flutter/material.dart';
import '/l_presentation/app_theme.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;

  const SearchField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.colorDeepBlack,
      height: 80,
      padding: const EdgeInsets.all(20),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: AppTheme.colorBlackMatte,
        ),
        child: Center(
          child: TextFormField(
            controller: controller,
            style: const TextStyle(
              fontSize: 17,
            ),
            decoration: const InputDecoration(
              hintText: 'Поиск',
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              isDense: true,
              icon: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.search,
                  size: 24,
                  color: AppTheme.colorBrightWhite,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
