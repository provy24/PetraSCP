import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  const Results({Key key}) : super(key: key);

  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  DataTable _createDataTable() {
    return DataTable(columns: _createColumns(), rows: _createRows());
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text('Date')),
      DataColumn(label: Text('Test')),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text('#100')),
        DataCell(Row(
          children: [Text('Flutter'), Text(' Basics')],
        )),
      ]),
      DataRow(cells: [
        DataCell(Text('#101')),
        DataCell(Text('Dart Internals')),
      ])
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: ListView(children: [_createDataTable()]),
    ));
  }
}
