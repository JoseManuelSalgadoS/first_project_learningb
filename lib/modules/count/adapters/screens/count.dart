import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    TextStyle fontSize32 = const TextStyle(fontSize: 32, color: Colors.teal);
    return  Scaffold(
      appBar: AppBar(title: const Text('Contador'), 
      elevation: 2.0,
      ), 
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //vertical
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Número de touch', style: fontSize32),
            Text('$number', style: fontSize32),
          ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          number ++;
          setState(() {
            
          });
        } 
      ),
    );
  }
}
