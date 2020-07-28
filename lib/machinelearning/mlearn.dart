import 'package:flutter/material.dart';

import 'tflite.dart';

class Mlearn extends StatefulWidget {
  @override
  _MlearnState createState() => _MlearnState();
}

class _MlearnState extends State<Mlearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "",
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
                  color: Colors.lightBlueAccent,
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //       image: NetworkImage(
                  //           'https://firebasestorage.googleapis.com/v0/b/koshishproject.appspot.com/o/mlogo.jpg?alt=media&token=0ed72167-0e91-4bad-adb5-0835646f3fbe'),
                  //       fit: BoxFit.cover),
                  // ),
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

                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Tensorflow()));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 100,
                              margin: EdgeInsets.all(10),
                              color: Colors.orange[50],
                              child: Center(
                                child: Text(
                                  " Tensorflow",
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
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => HomePage()));
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
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => Yashoo()));
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
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
