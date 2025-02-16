import 'package:bara_salfeh/di/score_di.dart';
import 'package:bara_salfeh/router/router.dart';
import 'package:bara_salfeh/screens/add_persons_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScoreDi(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      onGenerateRoute: BaseRouter.onGenerateRoute,
      home: AddPersonsScreen(),
    ));
  }
}
