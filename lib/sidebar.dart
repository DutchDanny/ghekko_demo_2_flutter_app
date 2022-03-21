import 'package:ghekko_demo_2_flutter_app/sidebar/over-ons.dart';
import 'package:ghekko_demo_2_flutter_app/sidebar/faq.dart';
import 'main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          // Remove padding
          padding: const EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                'Demo 2',
                style: TextStyle(
                  fontFamily: 'Bungee',
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              accountEmail: const Text('info@demo.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/ghekko-dev-avatar.png',
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFA1887F),

              ),
            ),
        ListTile(
          title: const Text(
            'Home',
            style: TextStyle(
              fontFamily: 'Arial Rounded MT Bold',
              fontSize: 13,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: IconButton(
            iconSize: 22,
            icon: const Icon(Icons.home,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const HomePage()));
            },
          ),
          onTap: ()
          {
            Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const HomePage()));
          },
        ),
            ListTile(
              title: const Text(
                'Over Ons',
                style: TextStyle(
                  fontFamily: 'Arial Rounded MT Bold',
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: IconButton(
                iconSize: 22,
                icon: const Icon(Icons.people,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const OverOns()));
                },
              ),
              onTap: ()
              {
                Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const OverOns()));
              },
            ),
        ListTile(
          title: const Text(
            'FAQ',
            style: TextStyle(
              fontFamily: 'Arial Rounded MT Bold',
              fontSize: 13,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: IconButton(
            iconSize: 22,
            icon: const Icon(Icons.format_list_numbered,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const Faq()));
            },
          ),
          onTap: ()
          {
            Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const Faq()));
          },
        ),
      ],
      )
    );
  }
}