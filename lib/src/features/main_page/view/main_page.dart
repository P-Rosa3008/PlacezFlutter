import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:placez/src/features/map/map.dart';
import 'package:placez/src/features/places_page/view/places_page.dart';
import 'package:placez/src/utils/theme/sizes.dart';
import 'package:placez/src/utils/widgets/app_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _bottomNavIndex = 0;
  final List<Widget> _screens = const [
    MainMap(),
    PlacesPage(),
  ];
  final List<IconData> _icons = [
    Icons.map,
    Icons.place,
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: buildAppBar(),
      body: _screens[_bottomNavIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: theme.primaryColorLight,
        activeIndex: _bottomNavIndex,
        elevation: Sizes.normal.size,
        gapWidth: 0,
        icons: _icons,
        inactiveColor: theme.iconTheme.color,
        notchSmoothness: NotchSmoothness.smoothEdge,
        splashColor: theme.primaryColorLight,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    );
  }
}
