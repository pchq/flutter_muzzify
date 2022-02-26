import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '/routing/app_router.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        ArtistsTab(),
        SearchTab(),
        CollectionTab(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        context.router;
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            tabsRouter.setActiveIndex(index);
          },
          items: const [
            BottomNavigationBarItem(label: 'Исполнители', icon: Icon(Icons.library_music)),
            BottomNavigationBarItem(label: 'Поиск', icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: 'Коллекция', icon: Icon(Icons.favorite)),
          ],
        );
      },
    );
  }
}
