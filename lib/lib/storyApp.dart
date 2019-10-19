import 'dart:math';

import 'package:flutter/material.dart';
import 'package:live/model/cart.dart' as prefix0;
import 'data.dart';

class Story extends StatefulWidget {
    final String title;
  Story({Key key, this.title}): super(key:key);
  @override
  _StoryState createState() => _StoryState();
}

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class _StoryState extends State<Story> {
  //var currentPage = images.length - 1.0;

  Widget list() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 50,
            maxWidth: 80,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.share,
                color: Colors.greenAccent,
              ),
            ),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 50,
            maxWidth: 100,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Asian',
                  style: TextStyle(color: Colors.greenAccent),
                )),
          ),
        ),
        Text('Italian'),
        Text('American'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // PageController controller = PageController(initialPage: images.length - 1);
    // controller.addListener(() {
    //   setState(() {
    //     currentPage = controller.page;
    //   });
    // });
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Container(
            height: 5,
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('images/salade.jpg'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
              ),
              title: Text('')),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text('Food Delivery',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 25,
            ),
            list(),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text('The Best Dishes',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            // Stack(
            //   children: <Widget>[
            //     CardScroll(currentPage),
            //     Positioned.fill(
            //       child: PageView.builder(
            //         itemCount: images.length,
            //         reverse: true,
            //         controller: controller,
            //         itemBuilder: (context, index){
            //           return Container(

            //           );
            //         },
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 30,
            ),
          Expanded(
            child: ListV(),
          )
           
          ],
        ),
      ),
    );
  }
}
// class CardScroll extends StatelessWidget {
//   var currentPage;
//   var padding =20.0;
//   var verticalInset=20.0;
//   CardScroll(this.currentPage);

//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: widgetAspectRatio,
//       child: LayoutBuilder(
//         builder: (context, constraint){
//           var width = constraint.maxWidth;
//           var heigth = constraint.maxHeight;
//           var safeWidth = width - 2* padding;
//           var safeHeigth = heigth - 2* padding;
//           var heigthOfPrimaryCard =safeHeigth;
//           var widthOfPrimaryCard = heigthOfPrimaryCard * cardAspectRatio;
//           var primaryCardleft = safeWidth - widthOfPrimaryCard;
//           var horizontalInset = primaryCardleft/2;
//           List<Widget> carList = new List();

//           for(var i=0; i<images.length; i++){
//             var delta = i - currentPage;
//             bool isOnRigth = delta>0;

//             var start = padding + max(primaryCardleft - horizontalInset* delta*(isOnRigth?15:1), 0.0);
//             var cardItem=Positioned.directional(
//               top: padding+ verticalInset * max(-delta, 0.0),
//               bottom: padding + verticalInset *max(-delta, 0.0),
//               start: start,
//               textDirection: TextDirection.rtl,
//               child: Container(
//                 child: AspectRatio(
//                   aspectRatio: cardAspectRatio,
//                   child: Stack(
//                     fit: StackFit.expand,
//                     children: <Widget>[
//                       Image.asset(images[i], fit:BoxFit.cover),
//                     ],
//                   ),
//                 ),
//               ),

//             );
//             carList.add(cardItem);

//           }
//           return Stack(
//             children: carList
//           );
//         },
//       ),
//     );
//   }
// }
class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
              children: <Widget>[
                Container(
                  // color: Colors.black,
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(120)),
                    margin: EdgeInsets.only(left: 20),
                    child: Image.asset(
                      'images/flutter.png',
                      fit: BoxFit.cover,
                    )),
                Container(
                  height: 50,
                  width: 70,
                  margin: EdgeInsets.only(left: 130),
                  child: Icon(Icons.favorite_border),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      //topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      //bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 200),
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('\$ 13.00',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 6,
                              ),
                      Text('Udon Soup With',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text('Chicken',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ],
            ),
      ],
      
    );
  }
}