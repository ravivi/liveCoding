import 'package:flutter/material.dart';
import 'package:live/storyApp.dart';
import 'data.dart';
import 'order.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        // alignment: Alignment.center,
        overflow: Overflow.visible,
        children: <Widget>[
          // Container(
          //     color: Colors.black,
          //     height: 800,

          //     ),
          Container(
            height: 600,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Ingredient:',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 80),
                    child: ListD(),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 410,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFDE8887),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Story()));
                      },
                      child: Container(
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 80,
                      //margin: EdgeInsets.only(left: 300),
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
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 60),
                  child: Image.asset(
                    'images/apple.png',
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('\$ 12.00',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 12,
                      ),
                      Text('Ramen Soup with Pork',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Cha Shu',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 72),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(
                      '- 2 +',
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 5.0,
                          fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              bottomRight: Radius.circular(60))),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Order()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            'Add to order',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
