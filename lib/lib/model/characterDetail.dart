import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'styleGuide.dart';

import 'character.dart';

class CharacterDetailScreen extends StatefulWidget {
 final double bottomBottomSheet = 0;
final double collapseBottom =-250;
final double total = -330;
  final Character character ;

  const CharacterDetailScreen({Key key, this.character}) : super(key: key);

  @override
  _CharacterDetailScreenState createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> with AfterLayoutMixin<CharacterDetailScreen> {
double bottomSheetPosition = -330;
bool isCollapse = false;

Widget clipsWidget(){
  return Container(
    height: 250,
    margin: EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            roundedContainer(Colors.redAccent),
            SizedBox(
              height: 20,
            ),
            roundedContainer(Colors.greenAccent),
            
          ],
        ),
        SizedBox(
          width: 16,
        ),
         Column(
          children: <Widget>[
            roundedContainer(Colors.lightBlueAccent),
            SizedBox(
              height: 20,
            ),
            roundedContainer(Colors.pinkAccent),
            
          ],
        ),
        SizedBox(
          width: 16,
        ),
          Column(
          children: <Widget>[
            roundedContainer(Colors.blueGrey),
            SizedBox(
              height: 20,
            ),
            roundedContainer(Colors.cyanAccent),
            
          ],
        ),
        SizedBox(
          width: 16,
        ),
         Column(
          children: <Widget>[
            roundedContainer(Colors.orangeAccent),
            SizedBox(
              height: 20,
            ),
            roundedContainer(Colors.purpleAccent),
            
          ],
        ),
      ],
    ),
  );
}
Widget roundedContainer(Color color){
  return Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),

  );
}
void onTap(){
  setState(() {
    bottomSheetPosition = isCollapse? widget.bottomBottomSheet
    : widget.collapseBottom;
    isCollapse = ! isCollapse;
  });
}

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children:<Widget>[
          Hero(
            tag: "background-${widget.character.name}",
            child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: widget.character.colors,
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft
                  ),

                )),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(top:8.0, left: 16),
                  child: IconButton(

                      icon: Icon(Icons.close, color: Colors.white.withOpacity(0.9), size: 40,),
                    onPressed: (){
                      setState(() {
                        bottomSheetPosition = widget.total;
                      });
                        Navigator.pop(context);
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Hero(
                    tag: "image-{$widget.character.name}",
                    child: Image.asset(
                      widget.character.imagesPath, height: screenHeight*0.45,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:32.0 , vertical: 8),

                    child: Hero(
                      tag: "name-${widget.character.name}",
                      child: Material(
                        color: Colors.transparent,
                        child: Container(
                          child: Text(
                              widget.character.name,
                              style: AppThem.heading,
                          ),

                      ),
                  ),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32.0 ,0,8, 40),
                  child: Text(
                    widget.character.description,
                    style: AppThem.subheading,
                  ),
                ),
              ],

            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.bounceIn,
            bottom: bottomSheetPosition,
            left: 0,
            right: 0,
            child: InkWell(
              onTap: onTap,
                          child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      height: 80,
                      child: Text(
                        'Clips',
                        style: AppThem.subheading.copyWith(color:Colors.black),
                      ),

                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: clipsWidget(),
                    )
                  ],
                ),
              ),
            ),
          )

        ]
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    Future.delayed(Duration(milliseconds: 500), (){
      setState(() {
      isCollapse = true;
      bottomSheetPosition = widget.collapseBottom;
      
    });
    });
  }
}
