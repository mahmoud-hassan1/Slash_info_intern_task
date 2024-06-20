import 'dart:convert';

import 'package:flutter/services.dart';

Future<Map<String, dynamic>> loadData() async {
  final jsonString = await rootBundle.loadString('assets/data/dummyData.json');
  return json.decode(jsonString);
}