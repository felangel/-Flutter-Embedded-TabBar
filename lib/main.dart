import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Nested TabBar',
        theme: ThemeData(brightness: Brightness.dark),
        home: Scaffold(body: HomePage()));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    final containerHeight = 300.0;
    final tabbar = TabBar(tabs: [Tab(text: 'Tab1'), Tab(text: 'Tab2')]);
    return Column(children: [
      Container(
          color: Colors.blue,
          height: containerHeight,
          child: Center(child: Text('Container'))),
      DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Column(
            children: [
              tabbar,
              Container(
                height: media.size.height -
                    containerHeight -
                    tabbar.preferredSize.height,
                child: TabBarView(
                  children: [
                    Placeholder(),
                    Placeholder(),
                  ],
                ),
              )
            ],
          ))
    ]);
  }
}
