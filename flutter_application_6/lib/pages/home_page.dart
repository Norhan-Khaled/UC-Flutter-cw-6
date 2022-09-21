import 'package:flutter/material.dart';
import 'package:flutter_application_6/pages/landmarks.dart';
import 'package:flutter_application_6/models/info_page.dart';

class home_page extends StatelessWidget {
  home_page({super.key});

  var landmarks = [
    Places(
      name: "Kuwait Towers",
      imgURL: "https://www.hilitehomes.com/images/kuwaittower.jpg",
    ),
    Places(
      name: "Liberation Tower",
      imgURL:
          "https://media.safarway.com/content/144a6d74-43fe-414a-afed-0b850c368c58_sm.jpg",
    ),
    Places(
      name: "Grand Mosque",
      imgURL:
          "https://upload.wikimedia.org/wikipedia/en/7/7d/Sheikh_Zayed_Mosque_view.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Landmarks in Kuwait'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: landmarks.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 22,
            color: Color.fromARGB(255, 93, 130, 94),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LandMarks(
                      place: landmarks[index],
                    ),
                  ),
                );
              },
              child: Row(
                children: [
                  Image.network(
                    landmarks[index].imgURL,
                    width: 120,
                    height: 120,
                  ),
                  Container(
                    padding: EdgeInsets.all(25),
                    child: Text(
                      landmarks[index].name,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
