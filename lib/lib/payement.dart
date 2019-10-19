import 'package:flutter/material.dart';
import 'profil.dart';

class Payement extends StatelessWidget {
  Widget myRow(String title, String image, double width){
    return  Container(
              height: 100,
              child: Card(
                elevation: 5,
                child: Row(
                  
                  children: <Widget>[
                    Image.asset(image, height: 50,),
                    
                    Text(title, style: TextStyle(color: Colors.grey, fontSize: 20),),
                        SizedBox(width: width,),
                    Icon(Icons.radio_button_unchecked, color: Colors.grey,)

                  ],
                )
              ),
            );
  }
    Widget myRow2(String title, String image, Color color, IconData icon, double width){
    return  Container(
              height: 100,
              child: Card(
                elevation: 5,
                child: Row(
                  
                  children: <Widget>[
                    Image.asset(image, height: 50,),
                    
                    Container(
                      padding: EdgeInsets.only(bottom: 10, right: 10),
                      child: Text('....', style: TextStyle(color: color, fontSize: 20,fontWeight: FontWeight.bold),)),
                       Container(
                      child: Text(title, style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.bold),)),
                        SizedBox(width: width,),
                    Icon(icon, color: color,)

                  ],
                )
              ),
            );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Payement',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
        ),
        leading: IconButton( 
          onPressed:  () {
        Navigator.pop(
            context, MaterialPageRoute(builder: (context) => Profil()));
      },
         icon: Icon(Icons.arrow_back_ios, color: Colors.black,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Choose Payement method', style: TextStyle(color: Colors.grey, fontSize: 20),),
            ),
            SizedBox(height: 20,),
           Expanded(
             child: ListView(
               children: <Widget>[
                  myRow('Apple pay', 'images/appPay.png',100.0),
            myRow2('6446', 'images/appPay.png', Colors.blue, Icons.radio_button_checked,110.0),
            myRow2('6555', 'images/appPay.png', Colors.grey, Icons.radio_button_unchecked,110.0),
            myRow('Cash', 'images/appPay.png',150.0),
               ],
             ),
           )
        

          ],
        ),
      ),
    );
  }
}