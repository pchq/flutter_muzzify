import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/l_domain/bloc/collection/collection_cubit.dart';
import '/l_presentation/widgets/profile_drawer.dart';
import '/l_presentation/widgets/lists/collection_list.dart';
import '/l_presentation/widgets/loading_indicator.dart';
import '/models/track.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  _CollectionPageState createState() => _CollectionPageState();
}

enum Sort { newFirst, oldFirst }

class _CollectionPageState extends State<CollectionPage> {
  Sort _sort = Sort.newFirst;
  late final _bloc = context.read<CollectionCubit>();
  late Stream<List<Track>> _collectionStream;

  @override
  void initState() {
    _collectionStream = _bloc.getTracks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ProfileDrawer(),
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        title: Text('Коллекция'),
        automaticallyImplyLeading: false,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.person_rounded),
            onPressed: () {
              Scaffold.of(context).openDrawer();
              // authBloc.logout();
            },
          );
        }),
        actions: [
          IconButton(
            icon: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationX(
                _sort == Sort.newFirst ? 0 : pi,
              ),
              child: Icon(Icons.sort),
            ),
            onPressed: () {
              setState(() {
                if (_sort == Sort.newFirst) {
                  _sort = Sort.oldFirst;
                  _collectionStream = _bloc.getTracks(false);
                } else {
                  _sort = Sort.newFirst;
                  _collectionStream = _bloc.getTracks(true);
                }
              });
            },
          ),
        ],
      ),
      body: StreamBuilder<List<Track>>(
        stream: _collectionStream,
        builder: (BuildContext context, AsyncSnapshot<List<Track>> snapshot) {
          if (snapshot.hasError) {
            // ToDo: Error handler
          }
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (snapshot.connectionState == ConnectionState.done ||
                    snapshot.connectionState == ConnectionState.active)
                  ColletionList(
                    list: snapshot.data ?? [],
                  ),
                if (snapshot.connectionState == ConnectionState.waiting) LoadingIndicator(),
              ],
            ),
          );
        },
      ),
    );
  }
}
