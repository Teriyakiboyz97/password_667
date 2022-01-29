import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 80,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.lock,
                  size: 100,
                ),
                Text('กรุณาใส่รหัสผ่าน',style: TextStyle(fontSize: 50,),),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 150,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildButton(1),
                      buildButton(2),
                      buildButton(3),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildButton(4),
                    buildButton(5),
                    buildButton(6),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildButton(7),
                    buildButton(8),
                    buildButton(9),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 27,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildButton(0),
                      Icon(
                        Icons.backspace,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: () {},
                          child: Text('ลืมรหัสผ่าน'),
                      )
                    ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButton(int num){
   return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
          width: 80.0,
          height: 80.0,
        decoration: BoxDecoration(
        color: Colors.yellow,
          border: Border.all(color: Colors.red, width: 4.0),

      ),
        child: ElevatedButton(onPressed: () {}, child: Text('$num')),
      ),
    );

  }
}
