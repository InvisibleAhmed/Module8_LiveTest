/* Kazi Shahed Ahmed
Module-8: Live Test
Flutter batch - 4
 */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageFeedScreen(),
    );
  }
}

class ImageFeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return ImageFeed(orientation: orientation);
        },
      ),
    );
  }
}

class ImageFeed extends StatelessWidget {
  final Orientation orientation;

  ImageFeed({required this.orientation});

  @override
  Widget build(BuildContext context) {
    final isPortrait = orientation == Orientation.portrait;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isPortrait ? 1 : 2, // Adjust based on orientation
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(8.0),
          child: Image.network(
            //"https://via.placeholder.com/150",
            "https://cdn.pixabay.com/photo/2014/07/31/23/10/biker-407123_1280.jpg",
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}











