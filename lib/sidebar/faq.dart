import 'package:flutter/material.dart';

class Faq extends StatelessWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text(
            'FAQ',
            style: TextStyle(
              fontFamily: 'Bungee',
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: ListView(
          children: const [
            Card(
                child: ListTile(
                  title:Text("Vraag 1") ,
                  subtitle: Text("Antwoord"),
                )
            ),
            Card(
              child: ListTile(
                title: Text("Vraag 2"),
                subtitle: Text("Antwoord"),
              ),
            ),
            Card(
                child: ListTile(
                  title: Text("Vraag 3"),
                  subtitle: Text("Antwoord"),
                )
            ),
          ],
          shrinkWrap: true,
        )
    );
  }
}