import 'package:flutter/material.dart';
import 'package:ghekko_demo_2_flutter_app/sidebar.dart';
import 'components/navigationbar_icons.dart';
import 'package:ghekko_demo_2_flutter_app/pages/page1.dart';
import 'package:ghekko_demo_2_flutter_app/pages/page2.dart';
import 'package:ghekko_demo_2_flutter_app/pages/page3.dart';
import 'package:ghekko_demo_2_flutter_app/pages/page4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ghekko Demo 2 Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedScreenIndex = 0;

  late final List<Widget> _screens = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4()
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Theme.of(context).colorScheme.primary.withOpacity(0.3),
        title: const Text(
          'Ghekko Demo 2',
          style: TextStyle(
            fontFamily: 'Bungee',
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      drawer: const SideBar(),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: SingleChildScrollView(
              child: _screens[_selectedScreenIndex],
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NavBarIcon(
                      icon: Icons.home,
                      inactiveIcon: Icons.home_outlined,
                      label: "Home",
                      darkMode: false,
                      active: (_selectedScreenIndex == 0),
                      onClick: () => _selectScreen(0),
                    ),
                    NavBarIcon(
                      icon: Icons.workspaces_filled,
                      inactiveIcon: Icons.workspaces_outline,
                      label: "Page 2",
                      darkMode: false,
                      active: (_selectedScreenIndex == 1),
                      onClick: () => _selectScreen(1),
                    ),
                    NavBarIcon(
                      icon: Icons.workspaces_filled,
                      inactiveIcon: Icons.workspaces_outline,
                      label: "Page 3",
                      darkMode: false,
                      active: (_selectedScreenIndex == 2),
                      onClick: () => _selectScreen(2),
                    ),
                    NavBarIcon(
                      icon: Icons.workspaces_filled,
                      inactiveIcon: Icons.workspaces_outline,
                      label: "Page 4",
                      darkMode: false,
                      active: (_selectedScreenIndex == 3),
                      onClick: () => _selectScreen(3),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

