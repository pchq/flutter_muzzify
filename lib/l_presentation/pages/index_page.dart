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
            // final nestedStackRouter =
            //     context.router.topMostRouter() as NestedStackRouter;

            // nestedStackRouter.popUntilRoot();
          },
          items: const [
            BottomNavigationBarItem(
                label: 'артисты', icon: Icon(Icons.music_note)),
            BottomNavigationBarItem(label: 'поиск', icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                label: 'коллекции', icon: Icon(Icons.collections)),
          ],
        );
      },
    );
  }
}
