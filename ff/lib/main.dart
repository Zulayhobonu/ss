import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(MaterialApp(home: asos(),));
}

class asos extends StatefulWidget {
  const asos({super.key});

  @override
  State<asos> createState() => _asosState();
}

class _asosState extends State<asos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("data"),),
        body: Center(child: TextButton(onPressed: () {
launchUrl(Uri.parse("https://www.youtube.com/"));

      }, child: Text("youtube"))),);
  }
}