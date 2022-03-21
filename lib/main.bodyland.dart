import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:bodyland/pages/acties.dart';
import 'package:bodyland/pages/contact.dart';
import 'package:bodyland/pages/homepage.dart';
import 'package:bodyland/pages/reserveren.dart';
import 'package:bodyland/pages/salons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bodyland/sidebar.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';

void main() {runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bodyland App',
        theme: ThemeData(
          primaryColor: Colors.black,
        ),
        home: const HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String page = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          'Bodyland',
          style: TextStyle(
            fontFamily: 'Bungee',
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      drawer: const NavDrawer(),
      extendBody: true,
      bottomNavigationBar: PandaBar(
        buttonSelectedColor:  const Color(0xFFe5c262),
        buttonColor:  Colors.grey,
        backgroundColor:  Colors.black,
        fabIcon: const Icon(Icons.insert_invitation,
          size: 33.0,
        ),
        fabColors: GradientColors.yellow,
        buttonData: [
          PandaBarButtonData(
            id: 'Home',
            icon: Icons.home,
            title: 'Home',
          ),
          PandaBarButtonData(
              id: 'Salons',
              icon:  Icons.dashboard_customize,
              title: 'Salons'
          ),
          PandaBarButtonData(
              id: 'Contact',
              icon: Icons.mail,
              title: 'Contact'
          ),
          PandaBarButtonData(
              id: 'Acties',
              icon: Icons.stars,
              title: 'Acties'
          ),
        ],
        onChange: (id) {
          setState(() {
            page = id;
          });
        },
        onFabButtonPressed: () {
          Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const Reserveren()));
        },
      ),
      body: Builder(

        builder: (context) {
          switch (page) {
            case 'Home':
              return
                const Home();
            case 'Salons':
              return
                const Salons();
            case 'Contact':
              return
                const Contact();
            case 'Acties':
              return
                const Acties();
            default:
              return Container();
          }
        },
      ),
    );
  }
}