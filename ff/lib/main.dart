import 'package:ff/ikki.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: asos()));
}

class asos extends StatefulWidget {
  const asos({super.key});

  @override
  State<asos> createState() => _asosState();
}

class _asosState extends State<asos> {
  //1 uchun
   List date2 = [];
  bool i = false;
  void funksiyabool() {
    setState(() {
      i = !i;
    });
  }

  // 2 sahifa uchun
  TextEditingController _controller = TextEditingController();
  TextEditingController input2 = TextEditingController();

  // List date2 = [];
  String natija = "";
  String yangi = "";
  void z() {
    setState(() {
      natija = _controller.text;
    });
  }

  String natija2 = "";
  void m() {
    setState(() {
      natija =_controller .text;
    });
  }
  //     Future<String> get _localPath async {
  //   final directory = await getApplicationDocumentsDirectory();
  //   return directory.path;
  // }

  // Future<File> get _localFile async {
  //   final path = await _localPath;
  //   return File('$path/natija.txt');
  // }
  //   Future<void> saveToFile(String text) async {
  //   final file = await _localFile;
  //   await file.writeAsString("$text\n", mode: FileMode.append);
  // }


  TimeOfDay? time = TimeOfDay(hour: 0, minute: 00);
  DateTime date = DateTime(2025);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              "Todat`s Tasks",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.green,
            labelColor: Colors.green,
            labelStyle: TextStyle(fontSize: 20),
            tabs: [
              Tab(text: "Personal"),
              Tab(text: "Default"),
              Tab(text: "Study"),
              Tab(text: "Work"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //birinchi
 Container(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "No`mon 165+20 26 30 15 20 30 92 23\n59=480",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        "June 8, 2024",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "16:05",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: funksiyabool,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: i ? Colors.black : Colors.green,
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Icon(
                            i ? Icons.close : Icons.check,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "100\$",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        "June 8, 2024",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "17:29",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: funksiyabool,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: i ? Colors.black : Colors.green,
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Icon(
                            i ? Icons.close : Icons.check,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    natija,
                    style: TextStyle(color: Colors.green),
                  ),
                  SizedBox(height: 40),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => SimpleDialog(
                            title: Text("Ma'lumot kiriting"),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  controller: _controller,
                                  decoration: InputDecoration(
                                    hintText: "Yozing...",
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    onPressed: () async {
                                      setState(() {
                                        natija = _controller.text;
                                        date2.add(natija,);
                                      });
                                      await (natija,);
                                      _controller.clear();
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.check),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.close),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      child: Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

            //ikkinchi
            Container(
              color: Colors.black,
              width: 500,
              height: 600,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ikki(olish: natija),
                        ),
                      );
                    },
                    child: Text(natija, style: TextStyle(color: Colors.green)),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Container(
                        // color: Colors.white,
                        width: 300,
                        height: 300,
                        child: Image(image: AssetImage("rasm/palma2.png")),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100, left: 1150),
                    child: FloatingActionButton(
                      backgroundColor: Colors.greenAccent[400],
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder:
                              (context) => SimpleDialog(
                                title: Text(
                                  "Adding Todo Default",
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 6, 116, 9),
                                  ),
                                ),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        TextField(
                                          decoration: InputDecoration(
                                            labelText: "Task",
                                            fillColor: Colors.red,
                                          ),
                                          onChanged: (value) {
                                            setState(() {
                                              natija = value;
                                            });
                                            // kirilgan malumot
                                          },
                                        ),
                                        TextField(
                                          decoration: InputDecoration(
                                            labelText: "Description",
                                            fillColor: Colors.red,
                                          ),
                                          onChanged: (value) {
                                            setState(() {
                                              natija2 = value;
                                            });
                                            // kirilgan malumot
                                          },
                                        ),
                                        // Text(
                                        //   "${time!.hour.toString()}:${time!.minute.toString()}",
                                        // ),
                                        Row(
                                          children: [TextButton(
                                              onPressed: () async {
                                                TimeOfDay? newtime =
                                                    await showTimePicker(
                                                      context: context,
                                                      initialTime: time!,
                                                    );
                                                if (newtime != null) {
                                                  setState(() {
                                                    time = newtime;
                                                  });
                                                }
                                              },
                                              child: Text(
                                                "Pick Date",
                                                style: TextStyle(
                                                  color: const Color.fromARGB(
                                                    255,
                                                    7,
                                                    147,
                                                    12,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                DateTime? newdate =
                                                    await showDatePicker(
                                                      context: context,
                                                      firstDate: DateTime(1900),
                                                      lastDate: DateTime(3000),
                                                    );
                                                if (newdate != null) {
                                                  setState(() {
                                                     date = newdate;
                                                  });
                                                }
                                              },
                                              child: Text(
                                                "Pick Time",
                                                style: TextStyle(
                                                  color: const Color.fromARGB(
                                                    255,
                                                    7,
                                                    147,
                                                    12,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                "Close",
                                                style: TextStyle(
                                                  color: Colors.purple,
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                setState(() {// date2.add(natija);
                                                });
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                "Add",
                                                style: TextStyle(
                                                  color: Colors.purple,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                        );
                      },
                      child: Icon(Icons.add, size: 30),
                    ),
                  ),
                ],
              ),
            ),
            Container(color: Colors.black),
            Container(color: Colors.black),
          ],
        ),
      ),
    );
  }
}