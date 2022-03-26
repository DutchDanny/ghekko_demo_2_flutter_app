import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Card(
                    elevation: 4.0,
                      child: Column(
                        children: [
                          const ListTile(
                            title: Text('Titel'),
                            subtitle: Text('Sub heading'),
                            trailing: Icon(Icons.favorite_outline),
                          ),
                          SizedBox(
                            height: 200.0,
                            child: Ink.image(
                            image: const NetworkImage(
                              'https://source.unsplash.com/random/800x600?house&'
                            ),
                              fit: BoxFit.cover,
                            ),
                          ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.centerLeft,
                          child: const Text('Supporting Text'),
                      ),
                          ButtonBar(
                            children: [
                              TextButton(
                                child: const Text('CONTACT AGENT'),
                                onPressed: () {
                              /* ... */
                                },
                              ),
                              TextButton(
                                child: const Text('LEARN MORE'),
                                onPressed: () {
                              /* ... */
                                },
                              )
                            ]
                          )
                        ]
                      )
                  ),
                  Card(
                      elevation: 4.0,
                      child: Column(
                          children: [
                            const ListTile(
                              title: Text('Titel'),
                              subtitle: Text('Sub heading'),
                              trailing: Icon(Icons.favorite_outline),
                            ),
                            SizedBox(
                              height: 200.0,
                              child: Ink.image(
                                image: const NetworkImage(
                                    'https://source.unsplash.com/random/800x600?house&'
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(16.0),
                              alignment: Alignment.centerLeft,
                              child: const Text('Supporting Text'),
                            ),
                            ButtonBar(
                                children: [
                                  TextButton(
                                    child: const Text('CONTACT AGENT'),
                                    onPressed: () {
                                      /* ... */
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('LEARN MORE'),
                                    onPressed: () {
                                      /* ... */
                                    },
                                  )
                                ]
                            )
                          ]
                      )
                  )
                ]
              )
          )

    );
  }
}