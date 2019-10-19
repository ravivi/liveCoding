import 'package:flutter/material.dart';

class Bank extends StatelessWidget {
  final double padding = 10.0;
  final double radius = 20.0;
  final double widthContainer = 50.0;
  final double heightContainer = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20.0),
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios), onPressed: null),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/rav.jpg'),
                    ),
                    IconButton(icon: Icon(Icons.more_vert), onPressed: null),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('ALL MY CREDIT CARDS'),
              Text(
                'Cards',
                style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: 200.0,
                child: Table(
                  border: TableBorder(
                      verticalInside: BorderSide(color: Colors.grey)),
                  children: [
                    TableRow(children: [
                      Text(
                        'CARDS',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10.0),
                      ),
                      Text('AMOUNT',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 10.0))
                    ]),
                    TableRow(children: [
                      SizedBox(
                        height: 15.0,
                      ),
                      SizedBox()
                    ]),
                    TableRow(children: [
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                    text: "2",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(text: "/6")
                              ])),
                      Text('\$500.0',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0))
                    ]),
                  ],
                ),
              ),
              Stack(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: heightContainer,
                        width: widthContainer,
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(radius))),
                      ),
                      Container(
                        height: heightContainer,
                        width: widthContainer,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(radius))),
                      ),
                    ],
                  ),
                  Card(
                    elevation: 10.0,
                    color: Colors.blue,
                    margin: EdgeInsets.all(widthContainer / 2),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(radius))),
                    child: Container(
                      width: double.infinity,
                      height: widthContainer * 2,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Flexible(child: Container()),
                          Icon(
                            Icons.monetization_on,
                            color: Colors.white,
                            size: 35.0,
                          ),
                          Flexible(child: Container()),
                          Text(
                            '**** 2060',
                            style: TextStyle(color: Colors.white),
                          ),
                          Flexible(flex: 4,child: Container()),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Bank',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30.0),
                                ),
                                Text(
                                  'Frederick johnson',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10.0),
                                ),
                              ],
                            ),
                          ),
                         
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    RichText(
                        text: TextSpan(
                            style:
                                TextStyle(color: Colors.black, fontSize: 20.0),
                            children: [
                          TextSpan(text: 'for'),
                          TextSpan(
                              text: ' today',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ])),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    padding: EdgeInsets.all(3.0),
                    width: 70.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          child: Icon(
                            Icons.wifi,
                            color: Colors.white,
                            size: 10.0,
                          ),
                        ),
                        Text(
                          'Filter',
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: myRow(Icons.directions_car, 'Machine Oil', 'Car parts',
                      25, 14.0),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: myRow(
                      Icons.android, 'Vegetables', 'Food', 50, 12.60),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.blue, width: 1),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.money_off,
                            size: 35,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Flexible(child: Container()),
                      Text(
                        'My Salary',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                      Flexible(
                        child: Container(),
                        flex: 10,
                      ),
                      Text('+ \$1200.00')
                    ],
                  ),
                ),

                Container(
                  height: 50,
                  child: RaisedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BankDetailController())),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      color: Colors.black,
                      textColor: Colors.white,
                      child: Container(
                        width: double.infinity,
                        child: Text(
                          'SEE ALL YOUR SPENDING',
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
                //Flexible(child: Container(),)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget myRow(
      IconData icon, String title, String subTitle, int percent, double price) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blue, width: 1),
          ),
          child: Center(
            child: Icon(
              icon,
              size: 35,
              color: Colors.blue,
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
            Text(subTitle),
          ],
        ),
        Flexible(
          child: Container(),
          flex: 3,
        ),
        Icon(
          Icons.timelapse,
          color: Colors.orange,
        ),
        Flexible(
          child: Container(),
          flex: 1,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[Text('$percent%'), Text('budget')],
        ),
        VerticalDivider(width: 20.0),
        Text(
          '\$$price',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        )
      ],
    );
  }
}

class BankDetailController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 32.0),
            width: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: null),
                IconButton(icon: Icon(Icons.more_vert), onPressed: null),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(22.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  
                  Text('Kate Smith'),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(fontSize: 60.0, color: Colors.black),
                          children: [
                        TextSpan(
                            text: '\$8600.',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '00')
                      ])),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.monetization_on,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text('6030....')
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom:8.0, left: 30),
                        child: Text(
                          'Sell',
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                      Expanded(child: Container()),
                      Container(
                        padding: EdgeInsets.all(3.0),
                        width: 70.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              child: Icon(
                                Icons.wifi,
                                color: Colors.white,
                                size: 10.0,
                              ),
                            ),
                            Text(
                              'Filter',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                      flex: 5,
                      child: Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          myCharts('MON', 1.0),
                          myCharts('TUE', 0.3),
                          myCharts('WED', 0.4),
                          myChartsSpec('THU', 0.5, Colors.red),
                          myCharts('FRI', 0.35),
                          myCharts('SAT', 0.45),
                          myCharts('SUN', 0.1),
                        ],
                      ))),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.0),
                                  children: [
                                TextSpan(text: 'for'),
                                TextSpan(
                                    text: ' today',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ])),
                          IconButton(
                              icon: Icon(Icons.arrow_drop_down),
                              onPressed: () => null),
                          Expanded(child: Container()),
                          FloatingActionButton(
                            onPressed: () => null,
                            backgroundColor: Colors.grey,
                            foregroundColor: Colors.white,
                            child: Icon(Icons.add),
                            elevation: 0.0,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget myCharts(String month, double height, {bool spec: false}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Flexible(
            flex: 5,
            child: FractionallySizedBox(
              heightFactor: height,
              child: Container(
                height: double.infinity,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20.0)),
                ),
              ),
            )),
        Expanded(child: Text(month)),
      ],
    );
  }

  Widget myChartsSpec(String month, double height, Color color) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top:70.0),
          child: Icon(
            Icons.monetization_on,
            color: Colors.orange,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Flexible(
                flex: 5,
                child: FractionallySizedBox(
                  heightFactor: height,
                  child: Container(
                    height: double.infinity,
                    width: 30,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20.0)),
                        image: DecorationImage(
                            image: AssetImage('assets/motif.png'),
                            fit: BoxFit.fill)),
                  ),
                )),
            Expanded(child: Text(month)),
          ],
        )
      ],
    );
  }

  
}
