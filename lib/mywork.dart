import 'package:flutter/material.dart';
import 'package:koshish/animation/ani.dart';
import 'package:koshish/machinelearning/mlearn.dart';
import 'package:koshish/prashant/prashant.dart';
import 'package:koshish/tabbar/mainpage.dart';
import 'authentication/auth.dart';
import 'covid/covidsplash.dart';

class MyWork extends StatefulWidget {
  @override
  _MyWorkState createState() => _MyWorkState();
}

class _MyWorkState extends State<MyWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        centerTitle: true,
        title: Text(
          "my work",
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
                  .push(MaterialPageRoute(builder: (context) => Coviddd()));
            },
            child: Container(
                color: Colors.red[50],
                margin: EdgeInsets.all(12),
                height: 100,
                child: Center(
                  child: Text(
                    "covid1 9",
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
                  .push(MaterialPageRoute(builder: (context) => Ani()));
            },
            child: Container(
                color: Colors.red[50],
                margin: EdgeInsets.all(12),
                height: 100,
                child: Center(
                  child: Text(
                    " Animation",
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
                  .push(MaterialPageRoute(builder: (context) => Loma()));
            },
            child: Container(
                color: Colors.red[50],
                margin: EdgeInsets.all(12),
                height: 100,
                child: Center(
                  child: Text(
                    "persanal project",
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
                  .push(MaterialPageRoute(builder: (context) => Prashant()));
            },
            child: Container(
                color: Colors.red[50],
                margin: EdgeInsets.all(12),
                height: 100,
                child: Center(
                  child: Text(
                    "Prasant sir",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w900),
                  ),
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Authenticati()));
            },
            child: Container(
                color: Colors.red[50],
                margin: EdgeInsets.all(12),
                height: 100,
                child: Center(
                  child: Text(
                    "authentication",
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
                  .push(MaterialPageRoute(builder: (context) => Mlearn()));
            },
            child: Container(
                color: Colors.red[50],
                margin: EdgeInsets.all(12),
                height: 100,
                child: Center(
                  child: Text(
                    "Machine Learning",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w900),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
