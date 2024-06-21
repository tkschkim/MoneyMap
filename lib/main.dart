import 'package:flutter/material.dart';
import 'package:flutter_application_1/app.dart';

import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}