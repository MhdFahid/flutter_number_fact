import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:number/facts/facts.dart';

Future<Facts> getResult(String number) async {
  final data =
      await http.get(Uri.parse('http://numbersapi.com/$number/year?json'));
  final bodtjson = jsonDecode(data.body) as Map<String, dynamic>;
  final _data = Facts.fromJson(bodtjson);
  return _data;
}
