import 'package:basic_flutter/main.dart';
import 'package:flutter/material.dart';
class PageOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Press Me"),
          onPressed: ()=> Navigator.pushNamed(context, "page_two")),
        ),
      );
  }
}
