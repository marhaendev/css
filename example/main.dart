import 'package:flutter/material.dart';
import 'package:css/css.dart';

void main() {
  runApp(MaterialApp(home: Main(), debugShowCheckedModeBanner: false));
}

class Main extends StatelessWidget {
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
          Text("text").css(
            w: double.infinity,
            p: 0,
            my: 10,
            r: 0,
            borderColor: Colors.teal,
            borderWidth: 1,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            icon: Icon(Icons.dashboard_rounded),
            onPressed: () => print("onPressed"),
            onLongPress: () => print("onLongPress"),
            onHover: (bool) {
              if (bool) print("onHover $bool");
              if (!bool) print("onHover $bool");
            },
          )
        ],
      ),
    );
  }
}
