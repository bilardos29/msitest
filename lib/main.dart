import 'package:flutter/material.dart';
import 'package:msitest/view/presenter/data_process.dart';
import 'package:msitest/view/screen_a.dart';
import 'package:msitest/view/screen_b.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => DataProcess()),
        ],
        child: const ScreenB(),
      ),
    );
  }
}
