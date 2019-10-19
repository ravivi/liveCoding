import 'package:flutter/material.dart';

class StackEx extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return StackExState();
  }

}
class StackExState extends State<StackEx>{
  double mychange =0.0;
  List<Color> myTab =[
    Colors.purple,
    Colors.indigo,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red
  ];


  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 7,
                child: IndexedStack(
              index: 0,
              children: <Widget>[
                Container(
                  color: myTab[mychange.toInt()],
                ),

              ],
            ),),
            Expanded(
                flex: 1,
              child: Slider(
                activeColor:myTab[mychange.toInt()],
                inactiveColor: myTab[mychange.toInt()],
                value: mychange,
                min: 0,
                max: 6,
                onChanged: (double d) {
                  setState(() {
                    mychange=d;
                  });
                },
              ),
            ),
          ],
        )

      );

  }
}
