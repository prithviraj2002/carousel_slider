import 'dart:convert' show json;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../model/Tour.dart';

Future<Tour> getData() async {
  final jsonString = await rootBundle.loadString('assets/data.json');
  final data = json.decode(jsonString);

  return Tour.fromJson(data);
}