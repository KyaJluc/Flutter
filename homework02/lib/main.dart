import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 135, 147, 219),
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Tap "-" to decrement',
                  style: TextStyle(color: Colors.white),
                ),
                CounterWidget(),
                Text(
                  'Tap "+" to increment',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;

  @override
  void initState() => super.initState();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: 120.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Color.fromARGB(255, 195, 200, 226),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                _count -= 1;
              });
            },
            icon: Icon(Icons.remove),
          ),
          Text(
            _count.toString(),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _count += 1;
              });
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
