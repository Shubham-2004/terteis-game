import 'package:flutter/material.dart';
import 'package:tetris/game/tetris.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Terties Game'),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 20,
                width: 500,
                color: Colors.amber,
                child: Text(
                  'The Rules and the Control of the game',
                ),
              ),
              Container(
                height: 500,
                width: 500,
                child: Text('Move right -> /n Move left <- /n'),
                color: Colors.green,
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tetris(),
                      ));
                },
                child: Text('Gets Started'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
