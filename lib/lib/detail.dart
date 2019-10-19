
// import 'package:flutter/material.dart';

// class Detail extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     final tab = ModalRoute.of(context).settings.arguments as Map<String, Object >;

//     print(tab);
//     print(tab['name']);
//     // TODO: implement build
//     return Scaffold(
//       backgroundColor: Color(0xFF287233),
//       body: Column(
//         children: <Widget>[
//           Container(
//             child: Padding(
//               padding: EdgeInsets.all(32),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   SizedBox(
//                     height: 32,
//                   ),
//                   Container(
//                     width: 200,
//                     child:Text('Panier', style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),


//                   ),
//                   SizedBox(height: 50,),
//                   item(Icons.star, tab['name'].toString(), 'x ${tab['item'].toString()}'),
//                   SizedBox( height: 16,),
//                   item(Icons.ac_unit, 'Humidity', 'up to 82%'),
//                   SizedBox( height: 16,),
//                   item(Icons.fastfood, 'Size', '38" - 48 tdll'),



//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 60,),
//           Column(
//             children: <Widget>[
//               Padding(
//                 padding: EdgeInsets.only(left: 48.0),
//                 child: Container(
//                   height: 60,
//                   decoration: BoxDecoration(
//                       color: Color(0xFF006400),
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(32),
//                           bottomLeft: Radius.circular(32)
//                       )
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,

//                     children: <Widget>[
//                       Icon(Icons.shopping_cart, color: Colors.white,),
//                       SizedBox(width: 10,),
//                       Text('Total',style: TextStyle(color: Colors.white,fontSize: 22, fontWeight: FontWeight.bold)),
//                       SizedBox(width: 100,),
//                       Text(tab['item'].toString(), style: TextStyle(color: Colors.white,fontSize: 22, fontStyle: FontStyle.italic, letterSpacing: 1.1)),
//                       SizedBox(width: 10,),
//                       Text('Produit(s)',style: TextStyle(color: Colors.white,fontSize: 22, fontWeight: FontWeight.bold)),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10,),
//               Padding(
//                 padding: EdgeInsets.only(left: 48.0),
//                 child: Container(
//                   height: 60,
//                   decoration: BoxDecoration(
//                       color: Color(0xFF006400),
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(32),
//                           bottomLeft: Radius.circular(32)
//                       )
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,

//                     children: <Widget>[
//                       Icon(Icons.money_off, color: Colors.white,),
//                       SizedBox(width: 10,),
//                       Text('Prix',style: TextStyle(color: Colors.white,fontSize: 22, fontWeight: FontWeight.bold)),
//                       SizedBox(width: 100,),
//                       Text(tab['Total'].toString(), style: TextStyle(color: Colors.white,fontSize: 22, fontStyle: FontStyle.italic, letterSpacing: 1.1)),
//                       SizedBox(width: 10,),
//                       Text('Fcfa',style: TextStyle(color: Colors.white,fontSize: 22, fontWeight: FontWeight.bold)),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Spacer(),
//           Container(
//             height: 90,
//             child: Row(
//               children: <Widget>[
//                 Container(
//                   height: 80,
//                   width: MediaQuery.of(context).size.width/2,
//                   child: Icon(Icons.arrow_drop_up, color: Colors.white,),

//                 ),
//                 Container(
//                   height: 90,
//                   width: MediaQuery.of(context).size.width/2,
//                   decoration: BoxDecoration(
//                     color: Color(0xFF2c2731),
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(32),
//                       bottomRight: Radius.circular(32)
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Icon(Icons.shopping_cart,color: Colors.white),
//                       SizedBox(width: 6,),
//                       Text('Ajoutez au panier', style: TextStyle(color: Colors.white),),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],

//       ),
//     );
//   }

// }

// item (icon, name, title) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: <Widget>[

//       Row(

//         children: <Widget>[

//           Icon(icon, color: Colors.white,),
//           SizedBox(width: 6,),
//           Text(name, style: TextStyle(color: Colors.white, fontSize: 20),),
//         ],
//       ),

//       Text(title, style: TextStyle(color: Colors.white),)
//     ],

//   );
// }




























import 'package:flutter/material.dart';


class Detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: <Widget>[
          SizedBox(height: 45,),
          Padding(
            padding: EdgeInsets.only(top:32),
            child: Text('Panier', style:TextStyle(fontSize: 45, color:Colors.white)),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.star, color: Colors.white, size: 15,),
              Text('Salade', style: TextStyle(color: Colors.white, fontSize: 20),),
              Text('x 4', style: TextStyle(color: Colors.white ,fontSize: 20),)
            ],
          )
        ],
      ),
    );
  }
  
}
