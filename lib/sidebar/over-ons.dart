import 'package:flutter/material.dart';

class OverOns extends StatelessWidget {
  const OverOns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text(
            'Over Ons',
            style: TextStyle(
              fontFamily: 'Bungee',
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          HeaderWidget(),
          BodyWidget(),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset(
                  'assets/images/ghekko-dev-avatar.png',
                  width: 80,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Over Ons',
                style: TextStyle(
                  fontFamily: 'Aero Club Como',
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ]
        ),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: const [
            Text(
              'Inhoud komt nog',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ]
        )
    );
  }
}