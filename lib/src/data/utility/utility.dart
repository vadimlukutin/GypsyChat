import 'package:flutter/services.dart';

class DataUtility {
  static Future<String> readStringFile({required String path}) async {
    return await rootBundle.loadString(path);
  }
}
