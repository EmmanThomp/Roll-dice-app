import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/gradient_container.dart';

void main() {
  //this starts the app and gets up and running by executing the root widget in it's argument.
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.deepPurple,
        body: GradientContainer([
          Colors.green,
          Colors.black,
          Colors.purple,
        ]),
      ),
    ),
  );
}



/*
//stateless widget is a widget from the flutter sdk and is a base class to create apps
class MyApp extends StatelessWidget {
  /* widget is the type of obj that the build method(funtion is returning)
  build is a type of method that is required by the exention of
  the StatelessWidget. BuildContext is a type annotation explaing what the context
  object or argument is.*/
  Widget build(BuildContext context) {
    //MaterialApp is a base class from flutter
    return MaterialApp(
      home: Text('Hello!'),
    );
  }
}
*/