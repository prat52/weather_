// import 'dart:js';
import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pbl/forecast.dart';
import 'package:pbl/location.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'location',//Initial screen for the user should be the location input screen
      routes: {
        'forecast': (context) => MyForecast(userLocation: ''),
        'location': (context) => const MyLocation(),
      }));
}
