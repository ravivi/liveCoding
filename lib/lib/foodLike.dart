import 'package:flutter/material.dart';

class Food extends StatefulWidget {

  final String title;
  Food({Key key, this.title}): super(key:key);

  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  List<String> images = [
    'images/burger.jpg',
    'images/kfc.png',
    'images/mcdo.png',
    'images/burg.jpg',
  ];
  List<String> title = ['Burger King', 'KFC', 'McDonnald', 'Burger'];
  List<String> subtitle = [
    'Entrance 460 g',
    'Entrance 380 g',
    '355 ml',
  ];
  List<String> price = [
    '\$24.00',
    '\$13.00',
    '\$4.00',
  ];
  IconData icon = Icons.favorite;

  Widget myList(String image, String title) {
    return Container(
      margin: EdgeInsets.only(bottom: 0),
      child: Row(
        children: <Widget>[
          Container(
            height: 80,
            width: 120,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.contain),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      '4,2',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' . fast-food',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' . \$\$',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.watch_later,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      ' 15-20min',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '2,5 km',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.pink,
          )
        ],
      ),
    );
  }

  Widget col(String title, IconData icon, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: Border.all(color: color, width: 1),
          ),
          child: Center(
            child: Icon(
              icon,
              size: 38,
              color: Colors.black,
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.work,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: "Hi,",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 40)),
                  TextSpan(
                    text: " Jack!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: "Deliver To  ",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 15)),
                      TextSpan(
                        text: "797 CAISSE SPURS",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                            color: Colors.purple),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.pink.withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        bottomLeft: Radius.circular(32))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    col('All', Icons.kitchen, Colors.white),
                    SizedBox(
                      width: 10,
                    ),
                    col('Burgers', Icons.fastfood,
                        Colors.grey.withOpacity(0.2)),
                    SizedBox(
                      width: 10,
                    ),
                    col('Pizza', Icons.local_pizza,
                        Colors.grey.withOpacity(0.2)),
                    SizedBox(
                      width: 10,
                    ),
                    col('Desert', Icons.cake, Colors.grey.withOpacity(0.2)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: images.length,
                itemBuilder: (context, i) {
                  return myList(images[i], title[i]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
