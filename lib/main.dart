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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/guess_logo.png',
                      width: 120.0,
                      height: 120.0,
                    ),
                    Text(
                      '      GUESS\nTHE NUMBER',
                      style:
                          TextStyle(fontSize: 35.0, color: Color(0xFF7CC406)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 120,
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
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 25,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 127,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildButton(0),
                          buildButton(-1),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
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

  Widget buildButton(int num) {
    Widget? child;
    Function? onTapCallback=(){
      print('$num');
    };
    if(num == -2){
      onTapCallback = null;
    }
    else if (num == -1) {
      child = Icon(Icons.backspace);
    } else {
      child = Text('$num');
    }
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.red, width: 4.0),
        ),
        child: ElevatedButton(onPressed: () {},
            child: child,)
      ),
    );
}
}
