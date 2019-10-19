import 'package:flutter/material.dart';
import 'package:live/model/character.dart';
import 'model/styleGuide.dart';
import 'model/characterWid.dart';

class Mignon extends StatefulWidget {
  @override
  _MignonState createState() => _MignonState();
}

class _MignonState extends State<Mignon> {
  PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 1.0,
      initialPage: currentPage,
      keepPage: false,
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black,),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SafeArea(

        child: Padding(
          padding: EdgeInsets.only(bottom :16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:32.0, top: 8.0),
                child: RichText(
                  text: TextSpan(
                    children:[
                      TextSpan(text: "Despicabe Me", style: AppThem.display1),
                      TextSpan(text: "\n"),
                      TextSpan(text: "Characters", style: AppThem.display2),
                    ]
                  ),
                ),
              ),
              Expanded(
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  children:<Widget>[
                    for(var i =0; i<characters.length; i++)
                        CharacterWidget(character: characters[i], pageController: _pageController,currentPage: i,),

                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
