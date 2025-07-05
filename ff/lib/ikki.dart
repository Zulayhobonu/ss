import 'package:flutter/material.dart';

class ikki extends StatefulWidget {
  final olish;
  const ikki({super.key, required this.olish});

  @override
  State<ikki> createState() => _ikkiState();
}

class _ikkiState extends State<ikki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Colors.green),
            ),
            Text(
              "personal Details",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: const Color.fromARGB(255, 4, 136, 9),
              ),
            ),
          ],
        ),
      ),
      body:
       Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Task:",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
       
     
            Text(
              "Description:",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
           Text(
              "Date:",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ), ],
        ),
      ),
    );
  }
}