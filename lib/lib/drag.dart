
import 'package:flutter/material.dart';
//import 'package:chess_vectors_flutter/chess_vectors_flutter.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Draggable(
              data: 5,
              child: Container(
                width: 200.0,
                height: 100.0,
                child: Center(
                  child: Text(
                    "Qui est Hans",
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                ),
                color: Colors.pink,
              ),
              feedback: Container(
                width: 200.0,
                height: 100.0,
                child: Center(
                  child: Text(
                    "Begou Hans Vernier",
                    style: TextStyle(color: Colors.white, fontSize: 18.0,),
                  ),
                ),
                color: Colors.pink,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 140.0,
                  height: 100.0,
                  color: Colors.green,
                  child: DragTarget(
                    builder:
                        (context, List<int> candidateData, rejectedData) {
                      print(candidateData);
                      return Center(child: Text("Un etudiant", style: TextStyle(color: Colors.white, fontSize: 22.0),));
                    },
                    onWillAccept: (data) {
                      return true;
                    },
                    onAccept: (data) {
                      if(data % 2 == 0) {
                        scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Juste tu le connais vraiment!")));
                      } else {
                        scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Non c'est pas juste !")));
                      }
                    },
                  ),
                ),
                Container(
                  width: 140.0,
                  height: 100.0,
                  color: Colors.deepPurple,
                  child: DragTarget(
                    builder:
                        (context, List<int> candidateData, rejectedData) {
                      return Center(child: Text("Le parrainzo", style: TextStyle(color: Colors.white, fontSize: 22.0),));
                    },
                    onWillAccept: (data) {
                      return true;
                    },
                    onAccept: (data) {
                      if(data % 2 != 0) {
                        scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("C'est le parrainzo de Nazareth!")));
                      } else {
                        scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Non c'est pas juste !")));
                      }
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}