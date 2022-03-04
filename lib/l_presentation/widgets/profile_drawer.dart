import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/l_domain/bloc/auth/auth_cubit.dart';
import '/l_presentation/app_theme.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authBloc = context.watch<AuthCubit>();

    return Drawer(
      child: Column(
        children: [
          SizedBox(height: 50),
          CircleAvatar(
            child: Icon(
              Icons.person_rounded,
              color: AppTheme.colorBrightWhite,
              size: 48,
            ),
            radius: 50,
            backgroundColor: AppTheme.colorFirm,
          ),
          SizedBox(height: 20),
          Text(
            authBloc.user.email ?? '',
            style: TextStyle(fontSize: 16),
          ),
          Spacer(),
          MaterialButton(
            onPressed: () {
              authBloc.logout();
            },
            color: AppTheme.colorGreyMiddle,
            child: Text('Выход'),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
