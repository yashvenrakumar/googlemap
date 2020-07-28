import 'package:flutter/material.dart';
import 'package:advanced_splashscreen/advanced_splashscreen.dart';
import 'package:koshish/prashant/pscreen.dart';

import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'screen4.dart';

class Prashant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdvancedSplashScreen(
        child: Pra(),
        seconds: 4,
        colorList: [
          Color(0xff9bcebb),
          Color(0xff9bceff),
          Color(0xff9bcfff),
        ],
        milliseconds: 1000,
        // appIcon: "assets/mlogo.jpg",
        appTitle: " PRaSHANT",
        backgroundImage: "assets/vulture.png",
        appTitleStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
            backgroundColor: Colors.white,
            fontWeight: FontWeight.bold),
        bgImageOpacity: 1,
      ),
    );
  }
}

class Pra extends StatefulWidget {
  @override
  _PraState createState() => _PraState();
}

class _PraState extends State<Pra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        centerTitle: true,
        title: Text(
          "Screens",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w800),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Pscreen()));
            },
            child: Container(
                color: Colors.red[50],
                margin: EdgeInsets.all(12),
                height: 100,
                child: Center(
                  child: Text(
                    "Pscreen ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w900),
                  ),
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Screen1()));
            },
            child: Container(
                color: Colors.red[50],
                margin: EdgeInsets.all(12),
                height: 100,
                child: Center(
                  child: Text(
                    "screen 1",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w900),
                  ),
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Screen2()));
            },
            child: Container(
                color: Colors.red[50],
                margin: EdgeInsets.all(12),
                height: 100,
                child: Center(
                  child: Text(
                    "screen 2",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w900),
                  ),
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Screen3()));
            },
            child: Container(
                color: Colors.red[50],
                margin: EdgeInsets.all(12),
                height: 100,
                child: Center(
                  child: Text(
                    "screen 3",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w900),
                  ),
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Screen4()));
            },
            child: Container(
                color: Colors.red[50],
                margin: EdgeInsets.all(12),
                height: 100,
                child: Center(
                  child: Text(
                    "screen 5",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w900),
                  ),
                )),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                color: Colors.red[50],
                margin: EdgeInsets.all(12),
                height: 100,
                child: Center(
                  child: Text(
                    "screen 5",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w900),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
