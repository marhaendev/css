import 'package:flutter/material.dart';
import 'package:css/css.dart';

void main() {
  runApp(MaterialApp(home: CleanCode(), debugShowCheckedModeBanner: false));
}

class CleanCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('css Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(),
          Text("noRadius").css(
            p: 10,
            mt: 10,
            c: "teal",
            ct: Colors.white,
            r: 20,
            s: 40,
            onPressed: () {},
            onLongPress: () {},
          ),
        ],
      ),
    );
  }
}
