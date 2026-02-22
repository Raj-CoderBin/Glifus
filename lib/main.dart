import 'package:flutter/material.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'home.dart';
import 'dart:io';

Future main() async {
  if (Platform.isWindows || Platform.isLinux) {
    // inicialize FFI
    sqfliteFfiInit();
  }
  databaseFactory = databaseFactoryFfi;
  runApp(MaterialApp(home: Home(), debugShowCheckedModeBanner: false));
}
