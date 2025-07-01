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
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red.shade50,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),

            child: Column(
              children: [
                Text("Fruit and Barries"),
                Text(widget.olish.nomi),
                Row(
                  children: [
                    Text(widget.olish.narxi),
                    Text(widget.olish.kilosi),],
                ),
              ],
            ),
            width: double.infinity,
            height: 200,
          ),
        ),
      ),
    );
  }
}
