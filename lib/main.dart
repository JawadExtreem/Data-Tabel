import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Table(),
          ),
        ),
      ),
    );
  }
}


class Table extends StatelessWidget {
  const Table({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: DataTable(

          border: TableBorder.all(color: Colors.deepPurpleAccent),
          columns: [
            DataColumn(label: Text('#')),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age')),
            DataColumn(label: Text('City')),
          ],

          rows: [
            DataRow(cells: [
              DataCell(Text('1'),),
              DataCell(Text('Jawad'),),
              DataCell(Text('26'),),
              DataCell(Text('Peshawar'),),
            ]),
    DataRow(cells: [
      DataCell(Text('2'),),
      DataCell(Text('Shehzad'),),
      DataCell(Text('27'),),
      DataCell(Text('Peshawar'),),
    ]),
            DataRow(cells: [
              DataCell(Text('3'),),
              DataCell(Text('Shams'),),
              DataCell(Text('27'),),
              DataCell(Text('Peshawar'),),
            ]),
          ],),
      ) ,
    );
  }
}



