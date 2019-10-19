import 'package:flutter/material.dart';
import 'payement.dart';

class Profil extends StatefulWidget {
    final String title;
  Profil({Key key, this.title}): super(key:key);
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  Widget myrow(String title, IconData icon, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Payement()));
      },
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Profile',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 35, color: Colors.black),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('images/apple.png'),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Your personal Promocode',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'ECBUAQX',
                                style: TextStyle(
                                    fontSize: 35, color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.copyright)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'images/ballon.jpg',
                      fit: BoxFit.contain,
                      height: 200,
                      colorBlendMode: BlendMode.color,
                      color: Colors.blue,
                    ),
                  ],
                )),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  myrow('Personal Details', Icons.account_circle, context),
                  SizedBox(
                    height: 30,
                  ),
                  myrow('Your Favorites', Icons.favorite_border, context),
                  SizedBox(
                    height: 30,
                  ),
                  myrow('Payement', Icons.payment, context),
                  SizedBox(
                    height: 30,
                  ),
                  myrow('Help Center', Icons.help_outline, context),
                  SizedBox(
                    height: 30,
                  ),
                  myrow('Promocodes', Icons.card_giftcard, context),
                  SizedBox(
                    height: 30,
                  ),
                  myrow('Log Out', Icons.local_gas_station, context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
