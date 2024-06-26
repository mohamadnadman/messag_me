import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:messagme/app.dart';
import 'package:messagme/firebase_options.dart';
import 'package:messagme/src/data/database_repository.dart';
import 'package:messagme/src/data/mock_database.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  DatabaseRepository mockDB = MockDatabase();
  runApp(App(mockDB));
}
 
