import 'package:flutter/material.dart';
import 'package:koshish/authentication/emailauth.dart';
import 'package:koshish/authentication/googglesign.dart';
import 'package:koshish/authentication/whatsappcoer/mainpage.dart';
import 'package:koshish/authentication/exmpl/hoem.dart';

class Authenticati extends StatefulWidget {
  @override
  _AuthenticatiState createState() => _AuthenticatiState();
}

class _AuthenticatiState extends State<Authenticati> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "authentication",
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
                                builder: (context) => RegisterPage()));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 100,
                              margin: EdgeInsets.all(10),
                              color: Colors.orange[50],
                              child: Center(
                                child: Text(
                                  " email authentication",
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
                                builder: (context) => LoginPageWidget()));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 100,
                              margin: EdgeInsets.all(10),
                              color: Colors.orange[50],
                              child: Center(
                                child: Text(
                                  "google sign in",
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
                                builder: (context) => GoogleSignApp()));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 100,
                              margin: EdgeInsets.all(10),
                              color: Colors.orange[50],
                              child: Center(
                                child: Text(
                                  " whatsapp coder",
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
                                builder: (context) => SignIn()));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 100,
                              margin: EdgeInsets.all(10),
                              color: Colors.orange[50],
                              child: Center(
                                child: Text(
                                  " sign in ",
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
