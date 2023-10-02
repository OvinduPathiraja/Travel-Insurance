import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:travel_insurance/Screens/landing.dart';
import 'package:provider/provider.dart';
import 'package:travel_insurance/Screens/login.dart';
import 'package:travel_insurance/Widgets/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insurance',
      themeMode: ThemeMode.system,
      home: Landing(),
      theme: Provider.of<ThemeProvider>(context).themeData,
      // routes: {
      //   // '/home': (context) => const Dashboard(),
      // },
    );
  }
}
