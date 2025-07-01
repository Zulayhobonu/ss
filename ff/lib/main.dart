import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MaterialApp(home: ValyutaKurslari()));
}

class ValyutaKurslari extends StatefulWidget {
  const ValyutaKurslari({super.key});

  @override
  State<ValyutaKurslari> createState() => _ValyutaKurslariState();
}

class _ValyutaKurslariState extends State<ValyutaKurslari> {
  //valyuta uchun
  List<dynamic> kurslar = [];
  // sortlash uchun
  List kurslar2 = [];
  // sortlash uchun
  void f(qayt) {
    setState(() {
      if (qayt.isEmpty) {
        kurslar2 = kurslar;
      } else {
     kurslar2 = kurslar.where((a) =>
    a["CcyNm_UZ"].toString().toLowerCase().contains(qayt.toLowerCase())).toList();
      }
    });
  }

  bool loading = true;

  @override
  void initState() {
    super.initState();
    kurslarniYuklash();
    kurslar2 = kurslar;
  }

  Future<void> kurslarniYuklash() async {
    try {
      var response = await Dio().get(
        "https://cbu.uz/uz/arkhiv-kursov-valyut/json/",
      );
      setState(() {
        kurslar = response.data;
        loading = false;
      });
    } catch (e) {
      print("Xatolik: $e");
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: (value) {
            f(value);
          },
        ),
      ),
      body:
          loading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: kurslar2.length,
                itemBuilder: (context, index) {
                  var val = kurslar2[index];
                  return ListTile(
                    leading: CircleAvatar(child: Text('${index + 1}')),
                    title: Text(
                      '${val["CcyNm_UZ"]}',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text(
                      '1 ${val["Ccy"]} = ${val["Rate"]} so‘m',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.red,
                      ),
                    ),
               
                  );
                },
              ),
    );
  }
}
