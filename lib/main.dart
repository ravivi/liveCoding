import 'package:flutter/material.dart';
import './drag.dart';
import './stackExemple.dart';
import './animateEx.dart';
import './limitBox.dart';
import './pageV.dart';
import './animatedContainer.dart';
import './heroEx.dart';
import './connexion.dart';
import './valuList.dart';
import './detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: ValEx(),
      routes: {
        'detail': (context)=>Detail(),
      },
    );
  }
}
