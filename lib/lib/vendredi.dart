// import 'package:flutter/material.dart';
// import 'model/app_bottom.dart';

// class Vendredi extends StatefulWidget {
//   @override
//   _VendrediState createState() => new _VendrediState();
// }

// class _VendrediState extends State<Vendredi>
//     with SingleTickerProviderStateMixin {
//   AnimationController _controller;
//   Animation<double> heigthFactorAnimation;
//   final double collapsedHeigthFactor = 0.85;
//   final double expandedHeigthFactor = 0.67;
//   bool isAnimatedCompleted = false;

//   @override
//   void initState() {
//     super.initState();
//     _controller = new AnimationController(vsync: this, duration: Duration(milliseconds: 500));
//     heigthFactorAnimation = Tween<double>(begin: collapsedHeigthFactor, end: expandedHeigthFactor).animate(_controller);
//     //_controller.addStatusListener((currentStatus){
//       //if(currentStatus == AnimationStatus.dismissed){
//        // isAnimatedCompleted = true;
//       //}

//     //});


//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }

//   onBottomPartTap(){
// setState(() {
//   if(isAnimatedCompleted){
//     _controller.reverse();
//   } else{
//     _controller.forward();
//   }
//  isAnimatedCompleted = ! isAnimatedCompleted;
// });
//   }

//   Widget getWigdet(){
//     return Stack(
//       fit: StackFit.expand,
//       children: <Widget>[
//         FractionallySizedBox(
//           alignment: Alignment.topCenter,
//           heightFactor: heigthFactorAnimation.value,
//           child: Image.asset('images/salade.jpg' ,
//             fit: BoxFit.cover,
//             //colorBlendMode: BlendMode.hue,
//             //color: Colors.black,
//           ),
//         ),

//         GestureDetector(
//           onTap: (){
//             onBottomPartTap();
//           },
//           child: FractionallySizedBox(
//             alignment: Alignment.bottomCenter,
//             heightFactor: 1.05 - heigthFactorAnimation.value,
//             child: Container(
//               decoration:BoxDecoration(
//                 color:Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(40),
//                   topLeft: Radius.circular(40),
//                 ),
//               ),

//             ),
//           ),
//         ),


//       ],
//     );
//   }


//   @override
//   Widget build(BuildContext context) {
//     debugPrint(MediaQuery.of(context).size.height.toString());
//     return Scaffold(
//       backgroundColor: Colors.white,
//       //appBar: AppBar(
//         //backgroundColor: Colors.transparent,
//         //leading: Padding(padding: EdgeInsets.all(30),child: Icon(Icons.contact_phone),),
//      // ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: Container(margin: EdgeInsets.only(top: 10), child: FloatingActionButton(onPressed: null, child: Icon(Icons.add),)),
//       bottomNavigationBar: AppBottomBar(),
//       body: AnimatedBuilder(
//         animation: _controller,
//         builder: (context, widget){
//           return getWigdet();
//         },
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class Vendredi extends StatefulWidget {
//   @override
//   _VendrediState createState() => _VendrediState();
// }

// class _VendrediState extends State<Vendredi>
//     with SingleTickerProviderStateMixin {
//       bool isAnimated = false;
//   AnimationController _controller;
//   Animation<double> heightAnimation;
//   final double grand = 0.85;
//   final double petit = 0.67;


//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(vsync: this, duration: Duration(microseconds: 500));
//     heightAnimation = Tween<double>(begin: grand, end: petit).animate(_controller);
//     //  _controller.addStatusListener((currentStatus){
//     //   if(currentStatus == AnimationStatus.dismissed){
//     //    isAnimated = true;
//     //   }

//     // });
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }

//   changing(){
//     setState(() {
//       if(isAnimated){
//         _controller.reverse();
//       }
//       else{
//         _controller.forward();
//       }
//        isAnimated =! isAnimated;
//     }
//     );
//   }

//   Widget vue(){
//     return Stack(
//           fit: StackFit.expand,
//           children: <Widget>[
//             FractionallySizedBox(
//               alignment: Alignment.topCenter,
//               heightFactor: heightAnimation.value,
//               child: Image.asset('images/salade.png',fit:BoxFit.cover),

//             ),
//             GestureDetector(
//               onTap: (){changing();},
//                         child: FractionallySizedBox(
//                 alignment: Alignment.bottomCenter,
//                 heightFactor: 1.05- heightAnimation.value,
//                 child:Container(
//                   decoration: BoxDecoration(
//                     color: Colors.teal,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(40),
//                       topRight: Radius.circular(40)
//                     ),
//                   ),

//                 ),

//               ),
//             ),

//           ],
//         );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AnimatedBuilder(
//         animation: _controller,
//         builder: (context, widget){
//           return vue();
//         },
         
//       ),
      
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class Vendredi extends StatefulWidget {
//   @override
//   _VendrediState createState() => _VendrediState();
// }

// class _VendrediState extends State<Vendredi>
//     with SingleTickerProviderStateMixin {
//   AnimationController _controller;
//   Animation<double> heigthAnimated;
//   final double grand =0.85;
//   final double petit = 0.67;
//   bool verif = false;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
//     heigthAnimated = Tween<double>(begin: grand, end: petit).animate(_controller);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }

//   changing(){
//     setState(() {
//       if(verif){
//         _controller.reverse();
//       }
//       else{
//         _controller.forward();
//       }
//       verif = ! verif;
//     });
//   }

//   Widget vue(){
//     return Stack(
//         fit: StackFit.expand,
//         children: <Widget>[
//           FractionallySizedBox(
//             alignment: Alignment.topCenter,
//             heightFactor: heigthAnimated.value,
//             child: Image.asset('images/salade.png', fit:BoxFit.cover),
//           ),
//           GestureDetector(
//             onTap: (){
//               changing();
//             },
//                       child: FractionallySizedBox(
//               alignment: Alignment.bottomCenter,
//               heightFactor: 1.05 - heigthAnimated.value,
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.teal,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(40),
//                     topRight: Radius.circular(40),
//                   )

//                 ),
//               ),
//             ),
//           ),
          

//         ],
//       );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AnimatedBuilder(
//         animation: _controller,
//         builder: (context, widget){
//           return vue();
//         },
//       )
      
//     );
//   }
// }


import 'package:flutter/material.dart';


class Vendredi extends StatefulWidget {
  @override
  _VendrediState createState() => _VendrediState();
}

class _VendrediState extends State<Vendredi>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> heightAnime;
  final double grand = 0.85;
  final double petit = 0.67;
  bool verif = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    heightAnime = Tween<double>(begin: grand, end: petit).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  changing(){
    setState(() {
      if(verif){
        _controller.reverse();
      }
      else{
        _controller.forward();
      }
      verif = ! verif;
    });
  }

Widget vue(){
  return Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: heightAnime.value,
            child: Image.asset('images/salade.png', fit:BoxFit.cover),
          ),
          GestureDetector(
            onTap: (){
              changing();
            },
                      child: FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              heightFactor: 1.05 - heightAnime.value,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
            ),
          )
        ],
      );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 10),
        child: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
              child: Container(
          padding: EdgeInsets.only(left: 32, bottom: 32, top: 24, right: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.library_books,color: Colors.black,),
                Icon(Icons.search,color: Colors.black,),
                Icon(Icons.chat,color: Colors.black,),
                Icon(Icons.alarm,color: Colors.black,),

              ],
            ),
        ),
      ),
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, widget){
          return vue();
        },

      )
      
    );
  }
}