// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, dead_code, unnecessary_const

import 'package:flutter/material.dart';

class print extends StatefulWidget {
  const print({super.key});

  @override
  State<print> createState() => _printState();
}

class _printState extends State<print> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Penjualan"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          // ignore: prefer_const_literals_to_create_immutables
          columns: <DataColumn>[
            DataColumn(label: Text("Nama Pembeli")),
            DataColumn(label: Text("Nama Barang")),
            DataColumn(label: Text("Harga Barang")),
          ],
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text("Adi")),
                DataCell(Text("Sarung")),
                DataCell(Text("Rp. 100000")),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text("Adi")),
                DataCell(Text("Baju Koko")),
                DataCell(Text("Rp. 75000")),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text("Adi")),
                DataCell(Text("Kopiah")),
                DataCell(Text("Rp. 25000")),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text("Adi")),
                DataCell(Text("Tasbih")),
                DataCell(Text("Rp. 20000")),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text("Adi")),
                DataCell(Text("Sajadah")),
                DataCell(Text("Rp. 25000")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
