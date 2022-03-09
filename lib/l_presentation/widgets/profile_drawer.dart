import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/l_domain/bloc/auth/auth_cubit.dart';
import '/l_presentation/app_theme.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthCubit>();

    return Drawer(
      child: Column(
        children: [
          const SizedBox(height: 50),
          const CircleAvatar(
            child: Icon(
              Icons.person_rounded,
              color: AppTheme.colorBrightWhite,
              size: 48,
            ),
            radius: 50,
            backgroundColor: AppTheme.colorFirm,
          ),
          const SizedBox(height: 20),
          Text(
            authBloc.user.email ?? '',
            style: const TextStyle(fontSize: 16),
          ),
          const Spacer(),
          MaterialButton(
            onPressed: () {
              authBloc.logout();
            },
            color: AppTheme.colorGreyMiddle,
            child: const Text('Выход'),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
