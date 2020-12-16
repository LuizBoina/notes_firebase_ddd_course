import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_firebase_ddd_course/injection.dart';
import 'package:notes_firebase_ddd_course/presentation/core/app_widget.dart';

// ignore: avoid_void_async
void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // need explicit binding before new Firebase call
  await Firebase.initializeApp(); // new Firebase call
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
