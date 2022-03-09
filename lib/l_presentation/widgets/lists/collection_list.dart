import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/l_domain/bloc/collection/collection_cubit.dart';
import '/l_presentation/widgets/form/alert_button.dart';
import '/l_presentation/app_theme.dart';
import '/l_presentation/widgets/cards/track_card.dart';
import '/models/track.dart';

class ColletionList extends StatelessWidget {
  final List<Track> list;

  const ColletionList({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        Track track = list[index];
        return Dismissible(
          key: Key(track.id),
          direction: DismissDirection.endToStart,
          confirmDismiss: (direction) async {
            return await _confirmDismiss(context, track);
          },
          child: TrackCard(
            track,
            showArtistName: true,
            background: AppTheme.colorGreyDeep,
            canAddToCollection: false,
          ),
        );
      },
      itemCount: list.length,
    );
  }

  Future<bool?> _confirmDismiss(BuildContext context, Track track) async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: AppTheme.colorGreyDeep,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        title: Text(
          'Вы уверены, что хотите удалить трек?',
          textAlign: TextAlign.center,
        ),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AlertButton(
              onPressed: () {
                BlocProvider.of<CollectionCubit>(context).remove(track);
                context.router.pop();
              },
              label: 'Да',
            ),
            AlertButton(
              onPressed: () => context.router.pop(),
              label: 'Нет',
            ),
          ],
        ),
      ),
    );
  }
}
