import 'package:flutter/material.dart';
import './storyApp.dart';
import './profil.dart';
import './schoolApp.dart';
import './foodLike.dart';
import 'bank.dart';
import 'calculator.dart';
import 'mignon.dart';
import 'addidas.dart';



class AccueilExercice extends StatefulWidget {
  @override
  AccueilExerciceState createState() => AccueilExerciceState();
}

class AccueilExerciceState extends State<AccueilExercice> {
  List<Widget> myPageChange = [
    Addidas(),
    Story(title: 'fff',),
    Profil(title: 'jgjg',),
    School(title: 'fhnh',),
    Food(title: 'hhhhhhhh',),
    Bank(),
    Mignon(),
    Calculator(),
  ];

  List<String> myWidgetList = [
    'Addidas',
    'Food Delevery',
    'Payement',
    'SchoolApp',
    'Hi Jack !',
    'Cards',
    'Mignon',
    'Calculatrice',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Exercice complet', style: TextStyle( fontSize: 20),),
        centerTitle: true,
        backgroundColor: Colors.grey,
        leading: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
            height: 5,
            child: GestureDetector(
              //onTap: launchUrl3,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/burg.jpg'),
              ),
            ),
          ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 10),
            height: 5,
            child: GestureDetector(
              onTap: showModalSheet,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/rav.jpg'),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () {},
        child: Icon(Icons.code),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors.blueAccent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text('Accueil')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star_border,
              ),
              title: Text('Favoris')),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      backgroundColor: Colors.grey,
      body: ListView.builder(
        itemCount: myWidgetList.length,
        itemBuilder: (context, i) {
          return Stack(
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(right: 20, left: 30),
                  width: 400,
                  height: 70,
                  color: Colors.white,
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 60),
                        child: Text(
                          myWidgetList[i],
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      Spacer(
                        flex: 1,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          toNew(myPageChange[i]);
                        },
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(
                    right: 280,
                  ),
                  height: 82,
                  width: 82,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    elevation: 20,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/flutter.png'),
                    ),
                  )),
            ],
          );
     
        },
      ),
    );
  }

  void showModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: 200,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/rav.jpg'),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Octave N'dry",
                    style: TextStyle(fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                
              ],
            ),
            GestureDetector(
                  //onTap: launchUrl,
                  child: Container(
                    margin:
                        EdgeInsets.only(left: 12, right: 12, top: 2, bottom: 2),
                    child: Chip(
                      avatar: CircleAvatar(
                        backgroundImage: AssetImage('images/git.png'),
                        backgroundColor: Colors.white,
                      ),
                      label: Text(
                        'Github',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shadowColor: Colors.grey[40],
                      padding: EdgeInsets.all(4),
                    ),
                  ),
                ),
                
            GestureDetector(
                  onTap: (){
                    //launchUrl2('jeremiedry@gmail.com', "Question sur Exercice complet", 'Bonjour Octave');
                  },
                  child: Container(
                    margin:
                        EdgeInsets.only(left: 12, right: 12, top: 2, bottom: 2),
                    child: Chip(
                      avatar: CircleAvatar(
                        backgroundImage: AssetImage('images/gmail.png'),
                        backgroundColor: Colors.white,
                      ),
                      label: Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.red,
                      elevation: 4,
                      shadowColor: Colors.grey[40],
                      padding: EdgeInsets.all(4),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }


  // void launchUrl() {
  //   launch('https://github.com/ravivi/exercice');
  // }
  // void launchUrl3() {
  //   launch('https://cursus.nan.ci/');
  // }
  //  void launchUrl2(String toMailId, String subject, String body) {
  //    var url = 'mailto:$toMailId?subject=$subject&body=$body';
  //   launch(url);
  // }

  void toNew(Widget wid) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return wid;
    }));
  }
}
