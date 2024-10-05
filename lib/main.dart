// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(WidgetApp());
}
//done
class WidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Common Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Displaying an animal image from a network source
            Image.network(
              'https://images.pexels.com/photos/248280/pexels-photo-248280.jpeg', // Image of a dog
              height: 200,
              width: 300,
              fit: BoxFit.cover,
            ),
            // Row with icons and text in the middle
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 50,
                      color: Colors.blue,
                    ),
                    Text('Home'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.star,
                      size: 50,
                      color: Colors.yellow,
                    ),
                    Text('Favorite'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.green,
                    ),
                    Text('Profile'),
                  ],
                ),
              ],
            ),
            // Elevated button at the bottom
            ElevatedButton(
              onPressed: () {
                print('Button Pressed');
              },
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
