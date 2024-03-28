import 'package:donut_ui_design/tab/burger_tab.dart';
import 'package:donut_ui_design/tab/donut_tab.dart';
import 'package:donut_ui_design/tab/pancake_tab.dart';
import 'package:donut_ui_design/tab/pizza_tab.dart';
import 'package:donut_ui_design/tab/smoothie_tab.dart';
import 'package:flutter/material.dart';
import 'package:donut_ui_design/util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const [
    MyTab(
      iconPath: 'assets/icons/donut.png',
    ),
    MyTab(
      iconPath: 'assets/icons/burger.png',
    ),
    MyTab(
      iconPath: 'assets/icons/smoothie.png',
    ),
    MyTab(
      iconPath: 'assets/icons/pancakes.png',
    ),
    MyTab(
      iconPath: 'assets/icons/pizza.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
            ),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 24.0,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 36.0,
                vertical: 18.0,
              ),
              child: Row(
                children: [
                  Text(
                    'I want to eat',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'EAT',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple[100],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            TabBar(
              tabs: myTabs,
              dividerColor: Colors.transparent,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(),
                  BurgerTab(),
                  SmoothieTab(),
                  PancakeTab(),
                  PizzaTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTab extends StatelessWidget {
  final String iconPath;
  const MyTab({Key? key, required this.iconPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        child: Image.asset(
          iconPath,
          color: Colors.grey[600],
        ),
      ),
    );
  }
}
