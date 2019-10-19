import 'package:flutter/material.dart';

class PageEx extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return PageExState();
  }

}
class PageExState extends State<PageEx> {
  static final GlobalKey<ScaffoldState> scafkey = GlobalKey<ScaffoldState>();
  var scrollDirection = Axis.horizontal;

  final controller = PageController(
    initialPage: 0
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:PageView(
        controller: controller,
        scrollDirection: scrollDirection,
        pageSnapping: true,
        children: <Widget>[

          Container(
            height: double.infinity,
            width: double.infinity,

            color: Colors.orange,

          ),
          Container(

            height: double.infinity,
            width: double.infinity,

            color: Colors.white,
          ),
          Container(
            height: double.infinity,
                  width: double.infinity,

                  color: Colors.green,

              ),
        ],
      ),

    );

  }
}