import 'package:flutter/material.dart';
import 'package:koshish/animation/ani2/ani2.dart';
import 'package:koshish/animation/ani3/ani3.dart';
import 'package:koshish/animation/ani4/ani4.dart';
import 'package:koshish/animation/animation1.dart';

class Ani extends StatefulWidget {
  @override
  _AniState createState() => _AniState();
}

class _AniState extends State<Ani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          " Mr Fawwaz ",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 600,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://firebasestorage.googleapis.com/v0/b/koshishproject.appspot.com/o/mlogo.jpg?alt=media&token=0ed72167-0e91-4bad-adb5-0835646f3fbe'),
                        fit: BoxFit.cover),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 500,
                    color: Colors.transparent,
                    child: ListView(
                      children: <Widget>[
                        SizedBox(
                          height: 80,
                        ),
                        // InkWell(
                        //   onTap: () {
                        //     Navigator.of(context).push(MaterialPageRoute(
                        //         builder: (context) => Mapaddress()));
                        //   },
                        //   child: ClipRRect(
                        //     borderRadius: BorderRadius.circular(12),
                        //     child: Container(
                        //       height: 100,
                        //       margin: EdgeInsets.all(10),
                        //       color: Colors.orange[50],
                        //       child: Center(
                        //         child: Text(
                        //           " find the addess from location",
                        //           style: TextStyle(
                        //               color: Colors.black,
                        //               fontSize: 18,
                        //               fontWeight: FontWeight.bold),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // InkWell(
                        //   onTap: () {
                        //     Navigator.of(context).push(
                        //         MaterialPageRoute(builder: (context) => Faw()));
                        //   },
                        //   child: ClipRRect(
                        //     borderRadius: BorderRadius.circular(12),
                        //     child: Container(
                        //       height: 100,
                        //       margin: EdgeInsets.all(10),
                        //       color: Colors.orange[50],
                        //       child: Center(
                        //         child: Text(
                        //           " Map Locator",
                        //           style: TextStyle(
                        //               color: Colors.black,
                        //               fontSize: 18,
                        //               fontWeight: FontWeight.bold),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LeopardPage()));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 100,
                              margin: EdgeInsets.all(10),
                              color: Colors.orange[50],
                              child: Center(
                                child: Text(
                                  " Fawwaz Favorite",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // InkWell(
                        //   onTap: () {
                        //     Navigator.of(context).push(MaterialPageRoute(
                        //         builder: (context) => Marker()));
                        //   },
                        //   child: ClipRRect(
                        //     borderRadius: BorderRadius.circular(12),
                        //     child: Container(
                        //       height: 100,
                        //       margin: EdgeInsets.all(10),
                        //       color: Colors.orange[50],
                        //       child: Center(
                        //         child: Text(
                        //           " Fawwaz Marker",
                        //           style: TextStyle(
                        //               color: Colors.black,
                        //               fontSize: 18,
                        //               fontWeight: FontWeight.bold),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Ani2()));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 100,
                              margin: EdgeInsets.all(10),
                              color: Colors.orange[50],
                              child: Center(
                                child: Text(
                                  "cluster",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Drawer3D()));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 100,
                              margin: EdgeInsets.all(10),
                              color: Colors.orange[50],
                              child: Center(
                                child: Text(
                                  "simple map activity",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Ani4()));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 100,
                              margin: EdgeInsets.all(10),
                              color: Colors.orange[50],
                              child: Center(
                                child: Text(
                                  "ani4",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
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
          )
        ],
      ),
    );
  }
}
