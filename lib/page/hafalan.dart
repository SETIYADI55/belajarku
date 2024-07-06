// ignore_for_file: empty_statements, unused_import, avoid_print, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyApp extends StatefulWidget {
  const MyApp({super.key, required String title});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  // This widget is the root of your application.
  Future<void> insertrecord() async {
    if (name.text != "" || email.text != "" || password.text != "") {
      try {
        String uri = "http://192.168.43.186/practice_api/insert_record.php";
        var res = await http.post(Uri.parse(uri), body: {
          "surah": name.text,
          "ayat": email.text,
          "status": password.text,
        });
        var response = jsonDecode(res.body);
        if (response["succes"] == "true") {
          print("record inserted");
        } else {
          print("some issues");
        }
      } catch (e) {
        print(e);
      }
    } else {
      print("please fil all fields");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 154, 183, 58)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hafalan'),
        ),
        body: Column(children: [
          Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Surah')),
              )),
          Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Ayat')),
              )),
          Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: password,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Status (Lancar/Ulangi)')),
              )),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                insertrecord();
              },
              child: Text('insert'),
            ),
          )
        ]),
      ),
    );
  }
}
