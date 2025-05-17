import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(home: asos()));
}

class asos extends StatefulWidget {
  const asos({super.key});

  @override
  State<asos> createState() => _asosState();
}

class _asosState extends State<asos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("data")),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                launchUrl(Uri.parse("https://www.youtube.com/"));
              },
              child: Text("youtube"),
            ),
            Row(
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9Tl7g5G8-Bg1RVjlc4qhZQ2hvnMhVM6oX0Q&s",
                ),
             Container(width: 200,height: 300,
              child: Image.asset("rasm/2kofe.jpg")) ],
            ),
          ],
        ),
      ),
    );
  }
}
