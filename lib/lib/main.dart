import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
import'./vendredi.dart';
import 'storyApp.dart';
import 'produictDetail.dart';
import 'order.dart';
import 'profil.dart';
import 'schoolApp.dart';
import 'foodLike.dart';
import 'accueil.dart';
import 'addidas.dart';
import'calculator.dart';
import 'mignon.dart';


void main() {
SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp
]);


  runApp(MyApp());

} 

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
      home: AccueilExercice(),
      routes: {
        'detail': (context)=>Detail(),
      },
    );
  }
}
