import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:placez/src/features/main_page/view/main_page.dart';
import 'package:placez/src/utils/theme/app_bar.dart';

void main() => runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: Scaffold(
        appBar: buildAppBar(),
        body: const MapSample(),
        // bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        //   itemCount: 1,
        //   tabBuilder: ((index, isActive) {return}),
        //   activeIndex: 0,
        //   onTap: ((_) => {}),
        // ),
      ),
    );
  }
}
