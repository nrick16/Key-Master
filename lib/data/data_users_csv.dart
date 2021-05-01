import 'dart:convert';
import 'dart:io';
import 'package:projeto_keymaster/models/user.dart';
import 'package:csv/csv.dart';

Future<void> run(path_file) async {
  var arquivo = File(path_file).openRead();

  var csv = await arquivo
      .transform(utf8.decoder)
      .transform(CsvToListConverter())
      .toList();

  csv.forEach((linha) {
    var id_csv = linha[0];
    var name_csv = linha[1];
    var url_csv = linha[2];

    print('ID: $id_csv, Nome: $name_csv, User URL: $url_csv');
  });
}
/*
const DATA_USERS = {
  
}
/
const DATA_USERS = {
  '1': const User(
    id: $id;
    name: $name;
    avatarURL: $avatarURL;
  )
}

'1': const User(
     id: id_csv,
     name: 'linha[1]',
    avatarURL: url_csv,
  ),*/
