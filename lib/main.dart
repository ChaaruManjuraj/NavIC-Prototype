import 'package:flutter/material.dart';
import 'package:navic/pages/arrival.dart';
import 'package:navic/pages/home.dart';
import 'package:navic/pages/navigation.dart';
import 'package:navic/pages/navigation_options.dart';
import 'package:navic/pages/directions.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/', routes: {
    '/': (context) => const Arrival(),
  }));
}
