import 'package:bmi_utfpr/pages/insert_data.dart';
import 'package:bmi_utfpr/pages/result_bmi.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bmi_controller.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => BMIController(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InsertData(),
        '/result': (context) => const ResultBMI()
      },
    );
  }
}
