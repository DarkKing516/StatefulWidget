import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  bool isChecked = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Checkbox Example'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'CheckBox',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Checkbox(
                    checkColor: Colors.green,
                    activeColor: Colors.red,
                    value: isChecked,
                    onChanged: (bool? value){
                      setState(() {
                        isChecked = value!;
                        print(isChecked);
                      });
                    }
                  ),
                  Checkbox(
                    value: isChecked2,
                    onChanged: (bool? value){
                      setState(() {
                        isChecked2 = value!;
                        print(isChecked2);
                      });
                    }
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
