import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/routing/app_router.dart';
import '/l_domain/bloc/auth/auth_cubit.dart';
import '/l_domain/bloc/collection/collection_cubit.dart';
import '/l_presentation/app_theme.dart';
import '/models/track.dart';

class ToCollectionButton extends StatefulWidget {
  final Track track;
  const ToCollectionButton({
    Key? key,
    required this.track,
  }) : super(key: key);

  @override
  State<ToCollectionButton> createState() => _ToCollectionButtonState();
}

class _ToCollectionButtonState extends State<ToCollectionButton> {
  bool _isLoading = true;
  bool _inCollection = false;
  late final _bloc = context.read<CollectionCubit>();

  @override
  void initState() {
    _bloc.checkTrack(widget.track);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isLogin = context.read<AuthCubit>().isLogin;
    return BlocBuilder<CollectionCubit, CollectionState>(
      builder: (context, state) {
        state.when(
          initial: () {},
          success: (value) {
            _inCollection = value;
            _isLoading = false;
          },
          loading: () {
            _isLoading = true;
          },
          error: () {
            _isLoading = false;
          },
        );
        if (isLogin) {
          return MaterialButton(
            onPressed: () {
              if (_isLoading) {
                return;
              } else if (_inCollection) {
                _bloc.remove(widget.track);
              } else {
                _bloc.add(widget.track);
              }
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: AppTheme.colorFirm,
            height: 30,
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 200),
              child: _isLoading
                  ? SizedBox(
                      key: Key('loader'),
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 1,
                        color: AppTheme.colorBrightWhite,
                      ),
                    )
                  : Text(
                      _inCollection ? 'Удалить из коллекции' : 'В коллекцию',
                      key: Key('$_inCollection'),
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
            ),
          );
        } else {
          return MaterialButton(
            onPressed: () {
              context.router.push(AuthRoute());
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: AppTheme.colorGreyMiddle,
            height: 30,
            child: Text(
              'В коллекцию',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          );
        }
      },
    );
  }
}
