import 'package:flutter/material.dart';  
  void main() {  
  runApp( MaterialApp(  
    title: 'Named Route Navigation',  
    theme: ThemeData(  
      // This is the theme of your application.  
      primarySwatch: Colors.green,  
    ),  
    // Start the app with the "/" named route. In this case, the app starts  
    // on the FirstScreen widget.  
    initialRoute: '/',  
    routes: {  
      // When navigating to the "/" route, build the FirstScreen widget.  
      '/': (context) => HomeScreen(),  
      // When navigating to the "/second" route, build the SecondScreen widget.  
      '/second': (context) => SecondScreen(),  
    },  
  ));  
}  
  
class HomeScreen extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('m-Indicator'),
            toolbarHeight: 30.0,
            backgroundColor: Color(0xFFFF880808),
          ),
          body: Center(
            child: Stack(
              fit: StackFit.passthrough,
              overflow: Overflow.visible,
              children: <Widget>[
// Max Size Widget
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.black,
                  child: Center(),
                ),
                Positioned(
                  top: 105,
                  right: 20,
                  left: 20,
                  child: Container(
                    height: 90,
                    width: 500,
                    color: Color(0x64646464),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Get Train Alerts',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.white, fontSize: 30.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                    top: 0,
                    child: Container(
                      height: 80,
                      width: 395,
                      padding: EdgeInsets.only(top: 1, left: 16, right: 16),
                      color: Color(0xFFFF0000),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Mumbai',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30.0),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(25),
                            child: FlatButton(
                              child: Text(
                                'News',
                                style: TextStyle(fontSize: 20.0),
                              ),
                              color: Colors.grey,
                              textColor: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    )),
                Positioned(
                  top: 205,
                  right: 20,
                  left: 20,
                  child: InkWell(
                    onTap: () {  
            Navigator.pushNamed(context, '/second');  
          },  

                    
                    child: Container(
                      height: 700,
                      width: 700,
                      color: Color(0x64646464),
                      child: GridView.count(
                          crossAxisCount: 4,
                          childAspectRatio: 1.0,
                          padding: const EdgeInsets.all(4.0),
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          children: <String>[
                            'https://img.icons8.com/color/48/000000/train.png',
'https://img.icons8.com/color/48/000000/bus.png',
'https://img.icons8.com/external-filled-outline-satawat-anukul/64/000000/external-economy-economy-filled-outline-filled-outline-satawat-anukul-58.png',
'https://img.icons8.com/external-xnimrodx-lineal-color-xnimrodx/64/000000/external-bus-coworking-space-xnimrodx-lineal-color-xnimrodx.png',
'https://img.icons8.com/doodle/48/000000/chat.png',
'https://img.icons8.com/emoji/48/000000/monorail.png',
'https://img.icons8.com/emoji/48/000000/metro.png',
'https://img.icons8.com/external-icongeek26-linear-colour-icongeek26/64/000000/external-autorickshaw-transportation-icongeek26-linear-colour-icongeek26.png',
'https://img.icons8.com/external-microdots-premium-microdot-graphic/64/000000/external-cab-transportation-vol1-microdots-premium-microdot-graphic.png',
'https://img.icons8.com/emoji/48/000000/ferry-emoji.png',
'https://img.icons8.com/ios-glyphs/30/000000/find-matching-job.png',
'https://img.icons8.com/external-justicon-flat-justicon/64/000000/external-map-map-and-location-justicon-flat-justicon-1.png',
                          ].map((String url) {
                            return GridTile(
                              child: Image.network(url));
                          }).toList()),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}  
  
class SecondScreen extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('m-Indicator-Mumbai'),
            //toolbarHeight: 30.0,
            backgroundColor: Color(0xFFFF880808),
          ),
          body: Center(
            child: Stack(
              fit: StackFit.passthrough,
              overflow: Overflow.visible,
              children: <Widget>[
// Max Size Widget
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.black,
                  child: Center(),
                ),
                Positioned(
                  top: 160,
                  right: 40,
                  left: 40,
                  child: Container(
                    height: 60,
                    width: 200,
                    color: Color(0xFFFFFFFF),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            style: TextStyle(fontSize: 25),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'SOURCE',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 230,
                  right: 40,
                  left: 40,
                  child: Container(
                    height: 60,
                    width: 200,
                    color: Color(0xFFFFFFFF),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            style: TextStyle(fontSize: 25),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'DESTINATION',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 320,
                  right: 40,
                  left: 40,
                  child: Container(
                    height: 60,
                    width: 200,
                    color: Color(0xFFFF0000),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Search',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.white, fontSize: 30.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                    top: 0,
                    child: Container(
                      height: 80,
                      width: 392,
                      color: Color(0xFFFF0000),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              '  STATION',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'A to B',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'FARE     ',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          )),
    );
  }
}