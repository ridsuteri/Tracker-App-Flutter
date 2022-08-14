import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:flutter_config/flutter_config.dart';

// create  crediantials
const _credentials = r'''
{
  "type": "service_account",
  
}

''';

// spreadsheet id

const _spreadsheetId = '';
void main() async {
  // initiliaze the google sheets api
  final gsheets = GSheets(_credentials);
  final ss = await gsheets.spreadsheet(_spreadsheetId);
  // get spreadsheet by it's title
  var sheet = ss.worksheetByTitle('Worksheet1');

  // updating a sheet
  await sheet!.values.insertValue('Hello', column: 1, row: 1);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
