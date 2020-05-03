import 'package:flutter/material.dart';
import 'package:mobx_example/controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final controller = Controller();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(builder: (_) {
              return Text('${controller.counter.value}');
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
