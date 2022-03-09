import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/routing/app_router.dart';
import '/l_domain/bloc/auth/auth_cubit.dart';
import '/l_presentation/widgets/form/input_field.dart';
import '/l_presentation/widgets/loading_indicator.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _emailFieldController = TextEditingController();
  final _passwdFieldController = TextEditingController();
  late final _authBloc = context.watch<AuthCubit>();
  bool _isLoading = false;
  bool _authRedirected = false;

  @override
  void dispose() {
    _emailFieldController.dispose();
    _passwdFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isRegistration = _authBloc.isRegistration;

    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (error) {
            ScaffoldMessenger.of(context)
              ..removeCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text(error.message)));
          },
        );
      },
      builder: (context, state) {
        state.whenOrNull(
          success: () {
            if (!_authRedirected) {
              _authRedirected = true;
              final StackRouter router = AutoRouter.of(context);

              if (router.canNavigateBack && router.current.parent?.name != 'CollectionTab') {
                router.navigateBack();
              } else {
                router.replace(const CollectionRoute());
              }
            }
          },
        );
        state.maybeWhen(
          loading: () {
            _isLoading = true;
          },
          orElse: () {
            _isLoading = false;
          },
        );

        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(flex: 2),
                const Text(
                  'Необходимо авторизоваться',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                InputField(
                  controller: _emailFieldController,
                  enabled: !_isLoading,
                  label: 'E-mail',
                ),
                InputField(
                  controller: _passwdFieldController,
                  enabled: !_isLoading,
                  label: 'Пароль',
                  isPasswd: true,
                ),
                const SizedBox(height: 20),
                _isLoading
                    ? const LoadingIndicator()
                    : ElevatedButton(
                        onPressed: () {
                          _authBloc.login(
                            _emailFieldController.text,
                            _passwdFieldController.text,
                          );
                        },
                        child: Text(isRegistration ? 'Регистрация' : 'Войти'),
                      ),
                const Spacer(flex: 3),
                _BottomAuthToggle(
                  enabled: !_isLoading,
                  isRegistration: isRegistration,
                  onPressed: _authBloc.toggleAuthType,
                ),
              ],
            ),
          ),
        );
      },
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
    final void Function()? _onPressed = enabled ? () => onPressed(!isRegistration) : null;

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
