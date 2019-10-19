


import 'package:flutter/material.dart';

class GridEx extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return GridExState();
  }

}
class GridExState extends State<GridEx> {
  Color myColor;
  List<Color> myTabColor = [
    Colors.black,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red
  ];
  List<Color> myTabColorState = [];
  List<List<double>> mySize=[
    [300,400],
    [100,350],
    [50,75],

];
 bool mySwicthControl = false;
 Map<String, List<Color>> myMap =
  {"Côte d'ivoire":[Colors.orange, Colors.white,Colors.green],
    "France":[Colors.blue, Colors.white,Colors.red]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drag me!'),
        centerTitle: true,
        actions: <Widget>[
          Switch(
            activeColor: myTabColor[0],
              value: mySwicthControl,
              onChanged: (bool value) => setState(() => mySwicthControl = value)
          )
        ],

      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: GridView.builder(
                itemBuilder:(context, i){
                  return Container(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Draggable<Color>(
                          data: myTabColor[i],
                          child: Container(
                            color: myTabColor[i],
                            height: 60,
                            width: 40,
                          ),
                          feedback: Container(
                            color: myTabColor[i],
                            height: 100,
                            width: 100,
                          ),
                        childWhenDragging: Container(
                          color: myTabColor[i],
                          height: 60,
                          width: 40,
                        ),
                      ),

                    ),
                  ) ;
                },
                  itemCount: myTabColor.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),)

            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 3,
              child:  Container(
                margin: EdgeInsets.only(right: 10, left: 10, bottom: 80),
                child: DragTarget<Color>(
                    builder: (context, List<Color> accept, reject){
                      return Container(
                        height: 600,
                        width: 300,
                        color: myColor,
                      );
                    },
                  onAccept: (data){
                      print(data);
                      setState(() {
                        myColor = data;
                      });


                  },
                  onWillAccept: (data){
                    return true;
                  },
                  //onLeave: ,
                ),
                //color: ,
              ),
            )
          ],
        ),

      ),

    );

  }
}