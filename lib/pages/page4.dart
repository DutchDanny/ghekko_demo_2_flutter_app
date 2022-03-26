import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 34,
        ),
        Card(
          elevation: 5,
          child: ListTile(
            leading: Icon(Icons.icecream),
            title: Text('I like icecream'),
            subtitle: Text('Icream is good for health'),
            trailing: Icon(Icons.food_bank),
          ),
        ),
      ],
    );
  }
}
