import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 34,
        ),
        Card(
          elevation: 5,
          color: Colors.amberAccent[100],
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.red, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.all(20.0),
          child: Column(
            children: const <Widget>[
              ListTile(
                leading: Icon(Icons.star),
                title: Text(
                  'Title of the Card',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black
                  ),
                ),
                subtitle: Text('Subtitle of the card for more text.'),
                trailing: Icon(Icons.privacy_tip),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: Colors.deepOrange,
          height: 20,
          thickness: 5,
          indent: 20,
          endIndent: 20,
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: Colors.black12,
          height: 4,
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
        const SizedBox(
          height: 20,
        ),
        const Card(
          elevation: 5,
          child: ListTile(
            leading: Icon(Icons.icecream),
            title: Text('I like icecream'),
            subtitle: Text('Icecream is good for health'),
            trailing: Icon(Icons.food_bank),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Card(
          child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/ghekko-dev-avatar.png'))),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Some text here'),
            ),
          ),
          margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
