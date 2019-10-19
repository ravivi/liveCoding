import 'package:flutter/material.dart';

class Connexion extends StatefulWidget {
  final String title;
  Connexion({Key key, this.title}) : super(key: key);

  @override
  ConnexionState createState() => ConnexionState();
}

class ConnexionState extends State<Connexion> {
  bool show = false;
  double top=-150.0;
  Widget cont(double height, double width, Color color) {
    return Container(
      height: height,
      width: width,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('widget.title'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              //launchUrl();
            },
          )
        ],
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: <Widget>[
            Positioned(
              
                
                child: AnimatedContainer(
                  duration: Duration(seconds: 2),
                  curve: Curves.bounceIn,
                  child: Text(
                    "Bienvenue",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                  ),
                )),

             AnimatedPositioned(
               curve: Curves.fastLinearToSlowEaseIn,
               duration: Duration(seconds: 2),
                top: top,
               //left: show ? -50 : 20,
               // bottom: show? -50: 200,
               child: Container(
                 height: 300,
                 width: 300,
                 color: Colors.orange,
                 child:SingleChildScrollView(
                   child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Container(
                        margin: EdgeInsets.only(bottom: 20),
                       child: Icon(Icons.edit, size:50, color: Colors.white,),
                     ),
                    
                     Container(
                       margin: EdgeInsets.only(right: 20, left: 20),
                       child: TextField(
                         decoration: InputDecoration(

                          border: OutlineInputBorder(
                               borderRadius: const BorderRadius.all(
                                 Radius.circular(10.0),
                               ),
                             ),
                             filled: false,
                             //hintStyle: TextStyle(color: Colors.grey[800]),
                             labelText: "Email",
                             fillColor: Colors.transparent),
                       ),
                     ),
                     SizedBox(
                       height: 20,
                     ),
                     Container(
                      margin: EdgeInsets.only (right: 20, left: 20),
                       child: TextField(
                         decoration: InputDecoration(
                             border: OutlineInputBorder(
                               borderRadius: const BorderRadius.all(
                                 Radius.circular(10.0),
                               ),
                             ),
                             filled: true,
                             //hintStyle: TextStyle(color: Colors.grey[800]),
                             labelText: "Mot de passe",
                             fillColor: Colors.transparent),
                       ),
                     ),
                     Container(
                         margin: EdgeInsets.only(top: 30),
                        
                         child:GestureDetector(
                           onTap: (){
                             setState(() {
                              print('hello');
                             });
                           },
                           child: RaisedButton(
                           child: Text(
                             'Connexion',
                             style: TextStyle(color: Colors.white),
                           ),
                           color: Colors.redAccent,
                           onPressed: () {
                             // setState(() {
                              
                             //   print('hello');
                             // });
                           },
                          shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(100)),
                         )
                         ) ),
                   ],
                 ),
                 )
               ),
             ),
          ],
        ),
      ),
    );
  }

}
