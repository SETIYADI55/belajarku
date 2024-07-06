// ignore_for_file: unnecessary_const, unused_import, camel_case_types

import 'package:belajar_sholat/page/login.dart';
import 'package:belajar_sholat/page/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const homepage());
}

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const absensi(
        title: '',
      ),
    );
  }
}
