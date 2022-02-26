import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/l_domain/bloc/auth/auth_cubit.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  static final _emailFieldController = TextEditingController();
  static final _passwdFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authBloc = context.watch<AuthCubit>();
    final authBlocState = authBloc.state;
    final isRegistration = authBloc.isRegistration;

    if (authBlocState is AuthStateSuccess) {
      AutoRouter.of(context).replaceNamed('/');
      _emailFieldController.dispose();
      _passwdFieldController.dispose();
    }

    final enableControls = authBlocState is! AuthStateLoading &&
        authBlocState is! AuthStateSuccess;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(flex: 2),
            const Text('todo: img'),
            const Text('Muzzify'),
            _InputField(
              controller: _emailFieldController,
              enabled: enableControls,
              label: 'E-mail',
            ),
            _InputField(
              controller: _passwdFieldController,
              enabled: enableControls,
              label: 'Пароль',
              isPasswd: true,
            ),
            authBlocState is AuthStateLoading
                ? Container(
                    padding: const EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    child: const Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    ),
                  )
                : ElevatedButton(
                    onPressed: () {
                      authBloc.login(
                        _emailFieldController.text,
                        _passwdFieldController.text,
                      );
                    },
                    child: Text(isRegistration ? 'Регистрация' : 'Войти'),
                  ),
            const Spacer(flex: 3),
            _BottomAuthToggle(
              enabled: enableControls,
              isRegistration: isRegistration,
              onPressed: authBloc.toggleAuthType,
            ),
          ],
        ),
      ),
    );
  }
}

class _InputField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool enabled;
  final bool isPasswd;

  const _InputField({
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

class _BottomAuthToggle extends StatelessWidget {
  final bool isRegistration;
  final Function(bool isRegistration) onPressed;
  final bool enabled;

  const _BottomAuthToggle({
    Key? key,
    required this.isRegistration,
    required this.onPressed,
    required this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final void Function()? _onPressed =
        enabled ? () => onPressed(!isRegistration) : null;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(isRegistration ? 'Уже есть аккаунт?' : 'Ещё нет аккаунта?'),
        TextButton(
          onPressed: _onPressed,
          child: Text(isRegistration ? 'Войти' : 'Регистрация'),
        ),
      ],
    );
  }
}
