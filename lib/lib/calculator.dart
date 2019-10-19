import 'package:flutter/material.dart';
import 'package:swipedetector/swipedetector.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String ouput ="0";
  double num1 = 0.0;
  double num2 = 0.0;
  String op ="";
  String _output ="0";
  bool isSwipe = false;
  bool isTapped = false;
  Widget _swipeDirection = Container(
    margin: EdgeInsets.only(left: 350),
    height: double.infinity,
    width: 200,
    color: Colors.orange,
  );
  buttonPressed(String buttonText){
     if(buttonText == "Del"){
        _output = "0";
       num1 = 0.0;
        num2 = 0.0;
        op ="";
     }else if(buttonText == "+"|| buttonText =="-" || buttonText == "/" || buttonText == "x"){
       num1 = double.parse(ouput);
       op = buttonText;
       _output ="0";
     }else if (buttonText == "."){
      if(_output.contains(".")){
         print("deja un decimal");
       return;
     } else{
       _output = _output + buttonText;
     }
      }
     else if(buttonText =="="){
       num2 = double.parse(_output);
       if (op == "+"){
         _output =(num1 + num2).toString();
       }
       if (op == "-"){
         _output =(num1 - num2).toString();
       }
       if (op == "x"){
         _output =(num1 * num2).toString();
       }
       if (op == "/"){
         _output =(num1 / num2).toString();
       }
       num1 = 0.0;
       num2 = 0.0;
       op = "";


     }
     else{
       _output = _output + buttonText;
     }
     print(_output);
     setState(() {
       ouput = double.parse(_output).toStringAsFixed(2);
     });
  }

  Widget bullButton(String title) {
    return MaterialButton(
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 40),
      ),
      onPressed: () {
        buttonPressed(title);
      },
      //padding: EdgeInsets.only(right:50,),
      minWidth: 20,
      
    );
  }
    Widget bullButtonop(String title) {
    return MaterialButton(
      child: Text(
        title,
        style: TextStyle(color: Colors.orange, fontSize: 18),
      ),
      onPressed: () {
        buttonPressed(title);
      },
    
      //padding: EdgeInsets.only(right:30, left: 20),
      
    );
  }

  Widget myRow(
    String title1,
    String title2,
    String title3,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          title1,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        Text(
          title2,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        Text(
          title3,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ],
    );
  }

  Widget myCol(
    String title1,
    String title2,
    String title3,
    String title4,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        bullButton(title1),
        bullButton(title2),
        bullButton(title3),
        bullButton(title4),
      ],
    );
  }

  Widget myCol2(String title1, String title2, String title3, String title4,
      String title5) {
    return Column(
      
      children: <Widget>[
        
           
           bullButtonop(title1),
         
        Spacer(),
        bullButtonop(title2),
        Spacer(),
        bullButtonop(title3),
        Spacer(),
        bullButtonop(title4),
        Spacer(),
        bullButtonop(title5),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(ouput,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
              flex: 3,
              child: Stack(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      isTapped = !isTapped;
                      print('bbbb');
                    },
                    child: Container(
                      color: isSwipe ? Color(0XFF161616) : Colors.black,
                      padding: const EdgeInsets.all(30),
                      child: Row(
                       
                        children: <Widget>[
                          myCol("7", "4", "1", "."),
                          Spacer(),
                          myCol("8", "5", "2", "0"),
                          Spacer(),
                          myCol("9", "6", "3", "="),
                          Spacer(),
                        
                             
                        
                        ],
                      ),
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.only(left: 280),
                  //   height: double.infinity,
                  //   width: 100,
                  //   color: Colors.grey.withOpacity(0.1),
                  // ),
                  Container(
                    
                             margin: EdgeInsets.only(left: 280) ,
                               height: double.infinity,
                               
                               width: 100,
                               color: Colors.grey.withOpacity(0.1),
                               child: myCol2("Del", "/", "x", "-", "+")),
                  SwipeDetector(
                    child: Container(
                      child: isTapped
                          ? Container(
                              margin: EdgeInsets.only(left: 350),
                              height: double.infinity,
                              width: 200,
                              color: Colors.orange,
                            )
                          : _swipeDirection,
                    ),
                    onSwipeLeft: () {
                      setState(() {
                        if (isSwipe) {
                          _swipeDirection = AnimatedContainer(
                            duration: Duration(seconds: 1),
                            margin: EdgeInsets.only(left: 100),
                            height: double.infinity,
                            width: 400,
                            color: Colors.orange,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                myRow("INV", "DEG", "%"),
                                myRow("SIN", "COS", "tan"),
                                myRow("ln", "log", "!"),
                                myRow("pi", "e", "^"),
                                myRow("(", ")", "Sqroot"),
                              ],
                            ),
                          );
                          print('yes');
                        }
                        isSwipe = !isSwipe;
                      });
                    },
                    onSwipeRight: () {
                      setState(() {
                        if (isSwipe == false) {
                          _swipeDirection = Container(
                            margin: EdgeInsets.only(left: 350),
                            height: double.infinity,
                            width: 200,
                            color: Colors.orange,
                          );
                          print('no');
                        }
                        isSwipe = !isSwipe;
                      });
                    },
                    swipeConfiguration: SwipeConfiguration(
                        horizontalSwipeMaxHeightThreshold: 50.0,
                        horizontalSwipeMinDisplacement: -500.0,
                        horizontalSwipeMinVelocity: -2500.0),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

// // import 'package:flutter/material.dart';
// // import 'package:swipedetector/swipedetector.dart';

// // class Calculator extends StatefulWidget {
// //   @override
// //   _CalculatorState createState() => _CalculatorState();
// // }

// // class _CalculatorState extends State<Calculator> {
// //   bool isSwipe = false;
// //   Widget _swipeDirection ;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(
// //         child: Container(
// //           child: Row(
// //             children: <Widget>[
// //               Expanded(
// //                 child: SwipeDetector(
// //                   child: Card(
// //                     child: Container(
// //                       padding: EdgeInsets.only(
// //                         top: 80.0,
// //                         bottom: 80.0,
// //                         left: 16.0,
// //                         right: 16.0,
// //                       ),
// //                       child: Column(
// //                         mainAxisSize: MainAxisSize.min,
// //                         children: <Widget>[
// //                           Text(
// //                             'Swipe Me!',
// //                             style: TextStyle(
// //                               fontSize: 40.0,
// //                             ),
// //                           ),
// //                           Container(
// //                             child:_swipeDirection,

// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                   onSwipeUp: () {
// //                     setState(() {
// //                       if(isSwipe){
// //                         _swipeDirection = Container(
// //                         height: 30,
// //                         width: 45,
// //                         color: Colors.black,
// //                       );
// //                       }
// //                       else{
// //                         _swipeDirection = Container(
// //                         height: 30,
// //                         width: 45,
// //                         color: Colors.blue,
// //                       );
// //                       }
// //                       isSwipe = ! isSwipe;
// //                     });
// //                   },
// //                   // onSwipeDown: () {
// //                   //   setState(() {
// //                   //     _swipeDirection = "Swipe Down";
// //                   //   });
// //                   // },
// //                   // onSwipeLeft: () {
// //                   //   setState(() {
// //                   //     _swipeDirection = "Swipe Left";
// //                   //   });
// //                   // },
// //                   // onSwipeRight: () {
// //                   //   setState(() {
// //                   //     _swipeDirection = "Swipe Right";
// //                   //   });
// //                   // },
// //                   swipeConfiguration: SwipeConfiguration(
// //                       verticalSwipeMinVelocity: 100.0,
// //                       verticalSwipeMinDisplacement: 50.0,
// //                       verticalSwipeMaxWidthThreshold:100.0,
// //                       horizontalSwipeMaxHeightThreshold: 50.0,
// //                       horizontalSwipeMinDisplacement:50.0,
// //                       horizontalSwipeMinVelocity: 200.0),
// //                 ),
// //               )
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import'package:flutter/material.dart';

// class Calculator extends StatefulWidget {
//   @override
//   _CalculatorState createState() => _CalculatorState();
// }

// class _CalculatorState extends State<Calculator> {
//     Widget counter = Container(
//       color: Colors.black,
//     );
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body:   Dismissible(
//         resizeDuration: null,
//         onDismissed: (DismissDirection direction) {
//           setState(() {
//             counter = direction == DismissDirection.startToEnd ? Container(
//               color: Colors.orange,
//               margin: EdgeInsets.only(left: 300),
//               height: double.infinity,
//               width: 100,
//             ) : Container(
//               margin: EdgeInsets.only(left: 100),
//               height: double.infinity,
//               width: 300,
//               color: Colors.orange,
//             );
//           });
//         },
//         key: new ValueKey(counter),
//         child: new Center(
//           child:counter,
//         ),
//       ),

//     );
//   }
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class Calculator extends StatefulWidget {
//   @override
//   _CalculatorState createState() => _CalculatorState();
// }

// class _CalculatorState extends State<Calculator> with SingleTickerProviderStateMixin {
//   double widthf = 0.05;
//   double width2 = 0.8;

//   AnimationController _animationController;
//   Animation _animation;
//   bool ff = false;

//   @override
//   void initState() {
//     _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
//     _animation = Tween<double>(begin: widthf, end: width2).animate(_animationController);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   void onTap(){
//     setState(() {
//       if (!ff)
//         _animationController.forward();

//       ff = !ff;

//     });
//   }

//   void onTap2(){
//     setState(() {
//       if (ff)
//         _animationController.reverse();
//       ff = !ff;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         bottom: false,
//         child: AnimatedBuilder(
//             animation: _animationController,
//             builder: (context, child){
//               return Stack(
//                 fit: StackFit.expand,
//                 children: <Widget>[
//                   FractionallySizedBox(
//                     alignment: Alignment.bottomLeft,
//                     heightFactor: 0.65,
//                     widthFactor: 0.95,
//                     child: Stack(
//                       fit: StackFit.expand,
//                       children: <Widget>[
//                         GestureDetector(
//                           onTap: onTap2,
//                           child: FractionallySizedBox(
//                             alignment: Alignment.bottomLeft,
//                             widthFactor: 0.80,
//                             child: Container(
//                               color: Color.fromRGBO(22,22, 22, 1),
//                               child: Column(
//                                 children: <Widget>[
//                                   Spacer(),
//                                   Row(
//                                     children: <Widget>[
//                                       SizedBox(width: 30,),
//                                       Text("7", style: TextStyle(color: Colors.white, fontSize: 25),),
//                                       Spacer(),
//                                       Text("8", style: TextStyle(color: Colors.white, fontSize: 25)),
//                                       Spacer(),
//                                       Text("9", style: TextStyle(color: Colors.white, fontSize: 25)),
//                                       SizedBox(width: 30,)
//                                     ],
//                                   ),
//                                   Spacer(),
//                                   Row(
//                                     children: <Widget>[
//                                       SizedBox(width: 30,),
//                                       Text("4", style: TextStyle(color: Colors.white, fontSize: 25)),
//                                       Spacer(),
//                                       Text("5", style: TextStyle(color: Colors.white, fontSize: 25)),
//                                       Spacer(),
//                                       Text("6", style: TextStyle(color: Colors.white, fontSize: 25)),
//                                       SizedBox(width: 30,)
//                                     ],
//                                   ),
//                                   Spacer(),
//                                   Row(
//                                     children: <Widget>[
//                                       SizedBox(width: 30,),
//                                       Text("1", style: TextStyle(color: Colors.white, fontSize: 25)),
//                                       Spacer(),
//                                       Text("2", style: TextStyle(color: Colors.white, fontSize: 25)),
//                                       Spacer(),
//                                       Text("3", style: TextStyle(color: Colors.white, fontSize: 25)),
//                                       SizedBox(width: 30,)
//                                     ],
//                                   ),
//                                   Spacer(),
//                                   Row(
//                                     children: <Widget>[
//                                       SizedBox(width: 30,),
//                                       Text(".", style: TextStyle(color: Colors.white, fontSize: 25)),
//                                       Spacer(),
//                                       Text("0", style: TextStyle(color: Colors.white, fontSize: 25)),
//                                       Spacer(),
//                                       Text("=", style: TextStyle(color: Colors.white, fontSize: 25)),
//                                       SizedBox(width: 30,)
//                                     ],
//                                   ),
//                                   Spacer(),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         FractionallySizedBox(
//                           alignment: Alignment.bottomRight,
//                           widthFactor: 0.20,
//                           child: Container(
//                             color: Color.fromRGBO(32,32, 32, 1),
//                             child: Column(
//                               children: <Widget>[
//                                 Spacer(),
//                                 Text("DEL", style: TextStyle(color:Color.fromRGBO(197,103, 18, 1), fontSize: 20 ),),
//                                 Spacer(),
//                                 Text("÷", style: TextStyle(color:Color.fromRGBO(197,103, 18, 1), fontSize: 20 )),
//                                 Spacer(),
//                                 Text("x", style: TextStyle(color:Color.fromRGBO(197,103, 18, 1), fontSize: 20 )),
//                                 Spacer(),
//                                 Text("-", style: TextStyle(color:Color.fromRGBO(197,103, 18, 1), fontSize: 20 )),
//                                 Spacer(),
//                                 Text("+", style: TextStyle(color:Color.fromRGBO(197,103, 18, 1), fontSize: 20 )),
//                                 Spacer()
//                               ],
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: onTap,
//                     child: FractionallySizedBox(
//                         alignment: Alignment.bottomRight,
//                         heightFactor: 0.65,
//                         widthFactor: _animation.value,
//                         child: Container(
//                           color: Color.fromRGBO(197, 103, 18, 1),
//                         )
//                     ),
//                   )
//                 ],
//               );
//             }),
//       ),
//     );
//   }
// }
