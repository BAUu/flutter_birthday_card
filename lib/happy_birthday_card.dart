import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Birthday Card'),
        ),
        body: BirthdayCard(
          backgroundImageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNVIFHOU-I8kVCDdOcwxQN_ue4RU5V6mbXog&s', // 배경 이미지 주소
        ),
      ),
    );
  }
}

class BirthdayCard extends StatelessWidget {
  final String backgroundImageUrl;

  BirthdayCard({required this.backgroundImageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(backgroundImageUrl), // 네트워크 이미지
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Happy Birthday To You',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'from me',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
        ],
      ),
    );
  }
}
