import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const birthDayCard(),
    );
  }
}

class birthDayCard extends StatefulWidget {
  const birthDayCard({super.key});

  @override
  State<birthDayCard> createState() => _birthDayCardState();
}

class _birthDayCardState extends State<birthDayCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('생일 축하 카드'),
      ),
      body:  Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('Happy BirthDay To You',textAlign: TextAlign.center, style: TextStyle(color: Colors.lightBlueAccent, fontSize: 80, ),),
            SizedBox(height: 30,),

            Text('from Me',textAlign: TextAlign.right , style: TextStyle(color: Colors.black, fontSize: 30)),
          ],
        )
    ),
    );
  }
  Widget bulid2(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('from Sam',textAlign: TextAlign.right , style: TextStyle(color: Colors.lightBlue, fontSize: 30),)
          ],
        ),
      ),
    );
  }
}

