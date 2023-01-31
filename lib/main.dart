import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee Project')),
          backgroundColor: Colors.red,
        ),
        body: DiceePage(),
      ),
    );
  }
}

class DiceePage extends StatelessWidget {
  const DiceePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                print('Left button got pressed');
              },
              child: Image.asset('images/dice-six-faces-one.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                print('right button got pressed');
              },
              child: Image.asset('images/dice-six-faces-six.png'),
            ),
          ),
        ],
      ),
    );
  }
}
