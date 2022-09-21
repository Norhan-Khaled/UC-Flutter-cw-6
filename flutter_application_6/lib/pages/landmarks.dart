import 'package:flutter/material.dart';
import 'package:flutter_application_6/models/info_page.dart';

class LandMarks extends StatelessWidget {
  const LandMarks({Key? key, required this.place}) : super(key: key);

  final Places place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
        backgroundColor: Colors.yellow[300],
      ),
      body: Center(
        child: Image.network(place.imgURL),
      ),
    );
  }
}
