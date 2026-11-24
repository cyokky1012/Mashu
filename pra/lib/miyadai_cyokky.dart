import 'package:flutter/material.dart';

class MiyadaiCyokkyPage extends StatelessWidget {   // ← 自分の名前に変える
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('宮大')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNPVuL9Uk5iYin2EQgeW4VWb4cYc-PdxeaAi1ZXf3iTQ&s',
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text('ヤンキー多めです、金髪大量発生、女子は似合う'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                 
                );
              },
              child: const Text('１つ目のおすすめスポットへ'),
            ),
            
            ElevatedButton(onPressed: () {}, child: Text('いいね')),
          ],
        ),
      ),
    );
  }
}