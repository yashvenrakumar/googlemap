import 'dart:async';
import 'package:flutter/material.dart';

// firebase
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:koshish/authentication/exmpl/hooo.dart';

//shared preferences and toast
import 'package:shared_preferences/shared_preferences.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  bool isLoading = false;
  bool isLoggedin = false;

  SharedPreferences prefs;
  FirebaseUser currentUser;

  @override
  void initState() {
    super.initState();
    issignin();
  }

  void issignin() async {
    setState(() {
      isLoading = true;
    });
    prefs = await SharedPreferences.getInstance();

    isLoggedin = await _googleSignIn.isSignedIn();

    if (isLoggedin) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
    setState(() {
      isLoading = false;
    });
  }

  Future<FirebaseUser> handleSignIn() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser firebaseUser =
        (await firebaseAuth.signInWithCredential(credential)).user;

    if (FirebaseUser != null) {
      final QuerySnapshot result = await Firestore.instance
          .collection('user')
          .where('id', isEqualTo: firebaseUser.uid)
          .getDocuments();
      List<DocumentSnapshot> documents = result.documents;
      if (documents.length == 0) {
        Firestore.instance
            .collection('user')
            .document(firebaseUser.uid)
            .setData({
          'id': firebaseUser.uid,
          'username': firebaseUser.displayName,
          'Photourl': firebaseUser.photoUrl,
        });

        //local data
        currentUser = firebaseUser;

        await prefs.setString('id', currentUser.uid);
        await prefs.setString('username', currentUser.displayName);
        await prefs.setString('Photourl', currentUser.photoUrl);
      } else {
        // await prefs.setString('id', documents[0]['id']);
        // await prefs.setString('username', documents[0]['username']);
        // await prefs.setString('Photourl', documents[0]['Photourl']);
      }

      setState(() {
        isLoading = false;
      });
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      setState(() {
        isLoading = false;
      });
    }
    return firebaseUser;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: FlatButton(
              onPressed: handleSignIn,
              child: Text("google sign in"),
            ),
          ),
          Positioned(
            child: Center(
              child: isLoading
                  ? Container(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                      ),
                      color: Colors.white.withOpacity(0.8),
                    )
                  : Container(),
            ),
          )
        ],
      ),
    );
  }
}
