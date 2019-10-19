import 'package:flutter/material.dart';

class HeroEx extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
        centerTitle: true,

      ),
      body: Center(          child: GestureDetector(
              child: Hero(
                tag: 'hero',
                child: Image.asset('images/flutter.png', fit: BoxFit.cover,),
                
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Hero Detail'),
                    ),
                    body: Container(
                      // The blue background emphasizes that it's a new route.
                      color: Colors.lightBlueAccent,
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.center,
                      child: Hero(
                        tag:'hero',
                        child: GestureDetector(
                          child:Image.asset('images/flutter.png', fit: BoxFit.cover,),

                          onTap: () {
                    Navigator.of(context).pop();
                    },
                    ),
                      ),
                    ),
                  );
                }
                ));
                //timeDilation:4.0;
              },
            ),


        ),


    );

  }
}