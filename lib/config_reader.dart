
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/services.dart';

abstract class ConfigReader {
  static Map<String, dynamic>? _config;

  static Future<void> initialize() async {
    final configString = await rootBundle.loadString('config/app_config.json');
    _config = json.decode(configString) as Map<String, dynamic>;
    log(_config.toString());
  }

  static int getIncrementAmount() {
    return _config!['increamentAmount'] ;
  }

  static String getSecretKey() {
    return _config!['secretkey'] ;
  }
}