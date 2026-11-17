import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SpotPage());
  }
}

class SpotPage extends StatefulWidget {
  @override
  State<SpotPage> createState() => _SpotPageState();
}

class _SpotPageState extends State<SpotPage> {
  int likes = 0;

  @override
  Widget build(BuildContext context) {
    String message;
            if (likes >= 10) {
              message = '大人気のスポットです！';
            } else if (likes >= 5) {
              message = '人気のスポットです！';
            } else {
              message = 'まだまだこれからです！';
            }
            Text('いいね $likes', style: TextStyle(fontSize: 20));
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '宮崎のおすすめスポット',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.orange),
            ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://picsum.photos/300/200',
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'いいね数: $likes',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              message,
              style: TextStyle(fontSize: 16),
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  likes = likes + 1;
                });
              },
              child: Text('凄いですね（笑）'),
             ),
             SizedBox(height: 10),
ElevatedButton(
  onPressed: () {
    setState(() {
      if (likes > 0) {
        likes = likes - 1;
      }
    });
  },
  child: Text('取り消し'),
),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              setState(() {
               likes = 0;
              });
            },
        child: Text('reset'),
          ),
        ],
      ),
    ));
  }
}