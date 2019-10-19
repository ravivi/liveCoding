import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyDemo'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            fit: StackFit.expand,
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                child: Image.asset('images/maison.jpg',
                  fit: BoxFit.fill,
                ),

              ),
              Positioned(

                top: 100,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      iconSize: 50,
                      icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                      onPressed: () => _handleOnPressed(),
                    ),
                    IconButton(
                      iconSize: 50,
                      icon: AnimatedIcon(
                        icon: AnimatedIcons.view_list,
                        progress: _animationController,
                      ),
                      onPressed: () => _handleOnPressed(),
                    ),
                  ],
                ),

              ),
              Positioned(
                bottom: 50,
                child: Card(
                  child: Container(
                    child: RichText(
                      text:TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(text: 'Hello', style: TextStyle(fontStyle: FontStyle.italic)),
                          TextSpan(text: 'Bonjour', style: TextStyle(backgroundColor: Colors.deepPurpleAccent)),
                          TextSpan(text: 'hola')
                        ],
                      ),
                    ),
                  ),
                ),
              ),


            ],
          ),

        ),
      ),
    );
  }

  void _handleOnPressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }
}