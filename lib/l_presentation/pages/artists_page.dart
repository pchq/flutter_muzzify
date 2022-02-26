import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:muzzify/routing/app_router.dart';

class ArtistsPage extends StatelessWidget {
  const ArtistsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('rout: ${context.router.current.name}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Artists'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
