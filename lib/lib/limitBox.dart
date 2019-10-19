import 'package:flutter/material.dart';
import 'dart:math';


class LimitBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LimitBoxState();
  }
}
double mychange =0.0;

final List<Color> circleColors = [
  Colors.purple,
  Colors.white,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red
];

Color randomGenerator() {
  return circleColors[new Random().nextInt(7)];
}

Widget Mylist = GridView.builder(
    itemCount: 7,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10,mainAxisSpacing: 10),
    itemBuilder: (BuildContext context, int index) {

        return Draggable(
          child: Container(

            width: 20,
            height: 20,
            color: circleColors[index],

          ),
          feedback: Container(
            width: 50,
            height: 50,
           color: circleColors[index],
          ),
        );

    }
);

class LimitBoxState extends State<LimitBox> with TickerProviderStateMixin  {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
              child: Mylist,
          ),
          Expanded(

                child: Container(
                    width: 140.0,
                    height: 100.0,
                    child: DragTarget(
                      builder:
                          (context, List<int> candidateData, rejectedData) {
                        print(candidateData);
                        return Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            
                          ],
                        );
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


          ),
        ],
      )

    );
  }

}


