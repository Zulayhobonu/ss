import 'package:flutter/material.dart';

void main() {
  runApp(s());
}

class s extends StatefulWidget {
  const s({super.key});

  @override
  State<s> createState() => _sState();
}

class _sState extends State<s> {
  bool d = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: d?ThemeData.dark():ThemeData.light(),
      home: Scaffold(appBar:AppBar(actions: [ Switch(value: d, onChanged: (value) {
        setState(() {
          d =value;
        });
      },),],),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text("raqam ${index + 1}");
          },
        ),
      ),
    );
  }
}
