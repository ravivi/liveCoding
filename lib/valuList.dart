// import 'package:flutter/material.dart';

// class ValEx extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return ValExState();
//   }
// }

// class ValExState extends State<ValEx> {
//   String url =
//       'https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwic2rzguu7kAhXdQxUIHZndDr4QjRx6BAgBEAQ&url=%2Furl%3Fsa%3Di%26source%3Dimages%26cd%3D%26ved%3D%26url%3Dhttps%253A%252F%252Fwww.planfor.fr%252Fjardin-conseils%252Cperiode-de-plantations.html%26psig%3DAOvVaw32KrlhWXPRQ-4Ph-cP71EP%26ust%3D1569586242581542&psig=AOvVaw32KrlhWXPRQ-4Ph-cP71EP&ust=1569586242581542';
//   int count = 1;
//   int decont = 0;
//   int countTotal = 0;
//   String name = 'Salade';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF287233),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Expanded(
//             flex: 4,
//             child: Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius:
//                     BorderRadius.only(bottomLeft: Radius.circular(120.0)),
//                 color: Colors.white,
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(32),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Icon(Icons.arrow_back),
//                     SizedBox(
//                       height: 32,
//                     ),
//                     Container(
//                       width: 300,
//                       child: Text(
//                         'Fiddle Leaf Fig Topiary',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 32,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 12,
//                     ),
//                     Text(
//                       '10" Nursey Pot ',
//                       style: TextStyle(color: Colors.black45),
//                     ),
//                     SizedBox(
//                       height: 22,
//                     ),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: <Widget>[
//                         Padding(
//                           padding: EdgeInsets.only(bottom: 10),
//                           child: Text(
//                             "\$",
//                             style: TextStyle(
//                                 color: Colors.green,
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Text(
//                           "285",
//                           style: TextStyle(
//                               color: Colors.green,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 52),
//                         )
//                       ],
//                     ),
//                     Spacer(),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Padding(
//                           padding: EdgeInsets.only(top: 50),
//                           child: DragTarget<int>(
//                             builder: (context, List<int> accept, reject) {
//                               return FloatingActionButton(
//                                 onPressed: () {
//                                   Navigator.pushNamed(context, 'detail',
//                                       arguments: {
//                                         'Total': countTotal,
//                                         'item': decont,
//                                         'name': name,
//                                       });
//                                 },
//                                 backgroundColor: Colors.green,
//                                 child: Icon(Icons.shopping_cart),
//                               );
//                             },
//                             onWillAccept: (data) {
//                               return true;
//                             },
//                             onAccept: (data) {
//                               setState(() {
//                                 decont = decont + 1;
//                                 countTotal = decont * 285;
//                               });
//                               print(decont);
//                             },
//                           ),
//                         ),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Draggable<int>(
//                           data: count,
//                           child: Container(
//                             width: 200,
//                             child: Image.asset(
//                               'images/salade.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           feedback: Container(
//                             width: 200,
//                             child: Image.asset(
//                               'images/salade.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           childWhenDragging: Container(
//                             width: 200,
//                             child: Image.asset(
//                               'images/salade.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 16,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 30),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   SizedBox(
//                     height: 16,
//                   ),
//                   Text(
//                     'Planting',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   Spacer(),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Row(
//                         children: <Widget>[
//                           Container(
//                               height: 100,
//                               width: MediaQuery.of(context).size.width / 2 - 50,
//                               decoration: BoxDecoration(
//                                 color: Color(0xFF006400),
//                                 borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(32),
//                                   topRight: Radius.circular(32),
//                                 ),
//                               ),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: <Widget>[
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: <Widget>[
//                                       Text(
//                                         countTotal.toString(),
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 30),
//                                       ),
//                                       SizedBox(
//                                         width: 10,
//                                       ),
//                                       Text(
//                                         'Fcfa',
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 15),
//                                       ),
//                                     ],
//                                   ),
//                                   Text(
//                                     'Prix total',
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 12),
//                                   )
//                                 ],
//                               )),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Container(
//                               height: 100,
//                               width: MediaQuery.of(context).size.width / 2 - 50,
//                               decoration: BoxDecoration(
//                                 color: Color(0xFF006400),
//                                 borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(32),
//                                   topRight: Radius.circular(32),
//                                 ),
//                               ),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: <Widget>[
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: <Widget>[
//                                       Text(
//                                         decont.toString(),
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 42),
//                                       ),
//                                       SizedBox(
//                                         width: 8,
//                                       ),
//                                       Text(
//                                         '',
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 15),
//                                       ),
//                                     ],
//                                   ),
//                                   Text(
//                                     'Total dans le panier',
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 12),
//                                   )
//                                 ],
//                               )),
//                         ],
//                       )
//                     ],
//                   ),
//                 ],
//                 // color: Colors.green,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }













import 'package:flutter/material.dart';

class ValEx extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ValExState();
  }
}

class ValExState extends State<ValEx> {
int count=1;
int decountItem =0;
int total = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(120),
                )
              ),
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.arrow_back),
                  SizedBox(height: 20,),
                  Container(
                    height: 100,
                    child: Text('Fiddle leaf Fig topiary', style: TextStyle(fontSize: 32),),
                  ),
                  
                  SizedBox(height: 5,),
                  Text('10° Nursey Pot', style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 12,),
                  Row(
                    
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('\$', style:TextStyle(fontSize: 18, color:Colors.greenAccent)),
                      ),
                      SizedBox(width: 3,),
                      Text('285', style: TextStyle(fontSize: 42, color: Colors.greenAccent),)
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 100),
                    child: DragTarget<int>(
                      builder: (context, List<int> accept,reject){
                        return FloatingActionButton(
                      child: Icon(Icons.shopping_cart),
                      backgroundColor: Colors.greenAccent,
                      onPressed: (){
                        Navigator.pushNamed(context, 'detail', arguments: {
                          'Total': total,
                          'Item' :decountItem,
                        });
                      },
                    );
                      },
                      onWillAccept: (data){
                        return true;
                      },
                      onAccept: (data){
                        setState(() {
                          decountItem = decountItem+1;
                          total = 285* decountItem;
                        });
                        print(decountItem);
                        print(total);
                      },

                    )
                  ),
                 Draggable<int>(
                   data: count,
                   child:  Container(
                    height: 200,
                    child:  Image.asset('images/salade.jpg',fit: BoxFit.cover,)
                  ),
                  feedback:  Container(
                    height: 200,
                    child:  Image.asset('images/salade.jpg',fit: BoxFit.cover,)
                  ),
                  childWhenDragging:  Container(
                    height: 200,
                    child:  Image.asset('images/salade.jpg',fit: BoxFit.cover,)
                  ),

                 ),
                    ],
                  )

                ],
              ),
              )
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(left:80),
                    child: Text('Planting', style:TextStyle(color: Colors.white)),
                  ),
                  SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(width: 20,),
                      Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width/2-40,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32)
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('${total}',style:TextStyle(color: Colors.white, fontSize: 30)),
                        SizedBox(width: 3,),
                        Text('Fcfa',style:TextStyle(color: Colors.white, fontSize: 15)),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('Total à payer',style:TextStyle(color: Colors.white, fontSize: 15)),

                      ],
                    )
                  ),
                    Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width/2-40,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32)
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('${decountItem}',style:TextStyle(color: Colors.white, fontSize: 30)),
                        SizedBox(width: 3,),
                        Text('',style:TextStyle(color: Colors.white, fontSize: 15)),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('Total Produit',style:TextStyle(color: Colors.white, fontSize: 15)),

                      ],
                    )
                  ),
                  SizedBox(width: 20,),
                  ],
                )
                  
                  
                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
  }
