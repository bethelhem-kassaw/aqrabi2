import 'dart:convert';

List<String> catregoriesFromJson(String str) => List<String>.from(json.decode(str).map((x) => x));

String catregoriesToJson(List<String> data) => json.encode(List<dynamic>.from(data.map((x) => x)));
