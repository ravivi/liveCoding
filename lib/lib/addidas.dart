import 'package:flutter/material.dart';
import 'package:live/model/data.dart' as prefix0;
import 'model/utils.dart';
import 'model/data.dart';

class Addidas extends StatefulWidget {
  @override
  _AddidasState createState() => _AddidasState();
}

class _AddidasState extends State<Addidas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF696077),
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          size: screenAware(20.0, context),
        ),
        title: Text(
          "Energy Cloud",
          style: TextStyle(
              color: Colors.white, fontSize: screenAware(18.0, context)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF696077), Color(0xFF292C36)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
        
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            ProductScrennPart(),
            ProductScreenPartTwo(),
          ],
        ),
      ),
    );
  }
}

class ProductScrennPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenAware(260.0, context),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Image.asset(
                'images/nike.png',
                height: 189,
                width: double.infinity,
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.hue,
                
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: screenAware(50.0, context),
                height: screenAware(50.0, context),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                child: Icon(Icons.add_circle, color: Colors.grey, size: 35),
              ),
            ),
          ),
          Positioned(
            left: screenAware(18.0, context),
            bottom: screenAware(25.0, context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Rating',
                  style: TextStyle(
                      color: Color(0xFF949598),
                      fontSize: screenAware(18.0, context)),
                ),
                SizedBox(
                  height: screenAware(8.0, context),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(Icons.star, color: Color(0xFFFFE600)),
                    SizedBox(
                      width: screenAware(8.0, context),
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(color: Color(0xFFFFE600)),
                    ),
                    SizedBox(
                      width: screenAware(5.0, context),
                    ),
                    Text(
                      "(378 People)",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductScreenPartTwo extends StatefulWidget {

  @override
  _ProductScreenPartTwoState createState() => _ProductScreenPartTwoState();
}

class _ProductScreenPartTwoState extends State<ProductScreenPartTwo> {
  bool isExpanded = false;
  int currentSizeIndex = 0;
   static int currentColorIndex = 0;
  int counter = 0;
  List<Widget> colorSelected() {
    List<Widget> colorItemSelected = new List();
    for(var i = 0; i<colors.length; i++){
      colorItemSelected.add(colorItem(colors[i], i == currentColorIndex, context, (){
        setState(() {
         currentColorIndex = i; 
        });

      }));
    }
    return colorItemSelected;

  }

  void countUp() {
    setState(() {
      counter++;
    });
  }

  void countDown() {
    setState(() {
      counter--;
    });
  }

  void expand() {
    setState(() {
      isExpanded ? isExpanded = false : isExpanded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: screenAware(130.0, context)),
              child: Text(
                'Product Description',
                style: TextStyle(
                    color: Color(0xFF949598),
                    fontSize: screenAware(18.0, context)),
              ),
            ),
            SizedBox(
              height: screenAware(8.0, context),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenAware(26.0, context),
                  right: screenAware(18.0, context)),
              child: AnimatedCrossFade(
                firstChild: Text(
                  desc,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenAware(10.0, context),
                  ),
                ),
                secondChild: Text(
                  desc,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenAware(10.0, context),
                  ),
                ),
                crossFadeState: isExpanded
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: kThemeAnimationDuration,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenAware(26.0, context),
                  right: screenAware(18.0, context)),
              child: GestureDetector(
                onTap: expand,
                child: Text(
                  isExpanded ? 'less' : "more ...",
                  style: TextStyle(
                    color: Color(0xFFF8382F),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenAware(15, context),
                  right: screenAware(75, context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Size',
                    style: TextStyle(
                        color: Color(0xFF949598),
                        fontSize: screenAware(18.0, context)),
                  ),
                  Text(
                    'Quantity',
                    style: TextStyle(
                        color: Color(0xFF949598),
                        fontSize: screenAware(18.0, context)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenAware(15.0, context),
                  right: screenAware(10.0, context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: screenAware(30, context),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: sizeNumList.map((item) {
                          var index = sizeNumList.indexOf(item);
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                currentSizeIndex = index;
                              });
                            },
                            child: sizeItem(
                                item, currentSizeIndex == index, context),
                          );
                        }).toList()),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: screenAware(100.0, context),
                      height: screenAware(30, context),
                      decoration: BoxDecoration(
                        color: Color(0XFF525663),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Flexible(
                            flex: 3,
                            child: GestureDetector(
                              onTap: countDown,
                              child: Container(
                                height: double.infinity,
                                child: Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          divider(),
                          Flexible(
                            flex: 3,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: double.infinity,
                                child: Center(
                                  child: Text(
                                    '$counter',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          divider(),
                          Flexible(
                            flex: 3,
                            child: GestureDetector(
                              onTap: countUp,
                              child: Container(
                                height: double.infinity,
                                child: Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: EdgeInsets.only(right: screenAware(210.0, context)),
              child: Text("Select color",
                  style: TextStyle(
                      color: Color(0xFF949598),
                      fontSize: screenAware(18.0, context))),
            ),
            SizedBox(
              height: screenAware(8.0, context),
            ),
            Container(
              margin: EdgeInsets.only(left: screenAware(20, context)),
              height: screenAware(34.0, context),
              width: double.infinity,
              child: Row(
                children: colorSelected(),
              ),

            ),
            SizedBox(
              height: 5,
            ),
           // Padding(
            //   padding: EdgeInsets.only(right: screenAware(210.0, context)),
            //   child: Text("Price",
            //       style: TextStyle(
            //           color: Color(0xFF949598),
            //           fontSize: screenAware(18.0, context))),
            // ),
            //Container(
            //   width: double.infinity,
            //   height: screenAware(120, context),
            //   child: Stack(
            //     alignment: Alignment.topCenter,
            //     children: <Widget>[
            //       Container(
            //         margin: EdgeInsets.only(left: screenAware(22.0, context)),
            //         child: Column(
            //           children: <Widget>[
            //             Padding(
            //               padding: EdgeInsets.only(left: screenAware(18.0, context)),
            //               child: Row(
            //                 children: <Widget>[
            //                   Text('\$',
            //                   style: TextStyle(color: Colors.white, fontSize: 26.0),
            //                   ),
            //                   SizedBox(width: 5,),
            //                   Text('85',
            //                   style: TextStyle(color: Colors.white, fontSize: 35.0),
            //                   ),
            //                 ],
            //               ),
            //             )
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // )
          ],
        ));
  }
}

Widget sizeItem(String size, bool isSelected, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0),
    child: Container(
      width: screenAware(30, context),
      height: screenAware(30, context),
      decoration: BoxDecoration(
          color: isSelected ? Color(0xFFFC3930) : Color(0xFF525663),
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
                color:
                    isSelected ? Colors.black.withOpacity(0.5) : Colors.black12,
                offset: Offset(0.0, 10.0))
          ]),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

Widget divider() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
    child: Container(
      width: 0.8,
      color: Colors.black,
    ),
  );
}


Widget colorItem(Color color, bool isSelected,BuildContext context, VoidCallback _ontab){
  return GestureDetector(
    onTap: _ontab,
    child: Padding(
      padding: EdgeInsets.only(left : screenAware(10, context)),
      child: Container(
        height: screenAware(30, context),
        width: screenAware(30, context),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: isSelected ?[
            BoxShadow(
              blurRadius: 10.0,
              color: Colors.black.withOpacity(0.8),
              offset: Offset(0.0, 10),

            )
          ]: [],
        ),
        child: ClipPath(
          clipper: hklimer(),
                  child: Container(
            width: double.infinity,
            height: double.infinity,
            color: color,
          ),
        ),
      ),
    ),
  );
}

class hklimer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path =new Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width*0.2, size.height);
        path.lineTo(size.width, size.height*0.2);
    path.lineTo(size.width, 0.0);
    path.close();
    // TODO: implement getClip
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
 
}