// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, unnecessary_const, prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names, must_be_immutable, prefer_const_constructors_in_immutables, library_private_types_in_public_api

import 'package:belajar_sholat/page/main_page.dart';
import 'package:flutter/material.dart';

class absensi extends StatefulWidget {
  const absensi({Key? key, required String title}) : super(key: key);

  @override
  _absensiState createState() => _absensiState();
}

class _absensiState extends State<absensi> {
  var nama_surat;

  var ayat;

  get nameController => null;

  get deskripsiController => null;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'IBADAHKU',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: 300,
        child: Card(
            color: Color.fromARGB(255, 11, 226, 15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    controller: nama_surat,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    controller: ayat,
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    color: Color.fromARGB(255, 15, 219, 202),
                    child: const Text('Login',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainPage(
                            title: 'tambah',
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
