import 'package:semi11/semi_11_app.dart';
import 'package:semi11/utils/network_dio.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  NetworkDio.setDynamicHeader();
  runApp(const Semi11App());
}
