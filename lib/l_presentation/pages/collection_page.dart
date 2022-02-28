import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/l_domain/bloc/auth/auth_cubit.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  _CollectionPageState createState() => _CollectionPageState();
}

enum Sort { dateUp, dateDown }

class _CollectionPageState extends State<CollectionPage> {
  Sort _sort = Sort.dateDown;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = context.watch<AuthCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Коллекция'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () {
            authBloc.logout();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.sort),
            onPressed: () {
              setState(() {
                if (_sort == Sort.dateDown) {
                  _sort = Sort.dateUp;
                } else {
                  _sort = Sort.dateDown;
                }
              });
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}
