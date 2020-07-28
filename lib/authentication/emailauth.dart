import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:koshish/tabbar/home.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class RegisterPage extends StatefulWidget {
  final String title = 'Registration';
  @override
  State<StatefulWidget> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _success;
  String _userEmail;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 130,
              child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/hot-wallpaper-3523a.appspot.com/o/impotheme.png?alt=media&token=b30b1c18-4cd5-416c-9080-e342ba9523ad',
                fit: BoxFit.fill,
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 20, 5),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      decoration: const InputDecoration(
                        //  focusedBorder: new UnderlineInputBorder(
                        //           borderSide: new BorderSide(
                        //               color: Colors.green,
                        //               width: 2,
                        //               style: BorderStyle.solid)),
                        //       labelText: " Name",
                        //       icon: Icon(
                        //         Icons.business_center,
                        //         color: Colors.green,
                        //       ),
                        //       fillColor: Colors.white,
                        //       labelStyle: TextStyle(
                        //         color: Colors.green,
                        //       ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                        ),

                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.greenAccent)),
                        labelText: 'Email',
                        icon: Icon(
                          Icons.email,
                          color: Colors.red,
                        ),
                      ),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 20, 5),
                    child: TextFormField(
                      obscureText: true,
                      controller: _passwordController,
                      decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                          ),
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          icon: Icon(
                            Icons.keyboard,
                            color: Colors.green,
                          )),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                        alignment: Alignment.bottomLeft,
                        child: RaisedButton(
                          color: Colors.green[300],
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              _formKey.currentState.save();
                              _register().whenComplete(() {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Home()));
                              });
                              // _register();
                            }
                          },
                          child: const Text(
                            'Submit',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        width: 70,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        alignment: Alignment.centerRight,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Home()));
                          },
                          child: const Text(
                            'register',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                    child: Center(
                      child: Text(
                        " or",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        // _handleSignIn().whenComplete((){
                        //          Navigator.of(context).push( MaterialPageRoute(builder: ( context)=> Homee()));

                        // });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                            width: 200,
                            height: 50,
                            color: Colors.red,
                            child: Center(
                                child: Text(
                              " Google SignIn ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: Center(
                      child: Text(
                        " or",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        // _handleSignIn().whenComplete((){
                        //          Navigator.of(context).push( MaterialPageRoute(builder: ( context)=> Homee()));

                        // });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                            width: 200,
                            height: 50,
                            color: Colors.blue,
                            child: Center(
                                child: Text(
                              " Facebook ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(_success == null
                        ? ''
                        : (_success
                            ? 'Successfully registered ' + _userEmail
                            : 'Registration failed')),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    ));
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Example code for registration.
  Future<void> _register() async {
    final FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    ))
        .user;
    if (user != null) {
      setState(() {
        _success = true;
        _userEmail = user.email;
      });
    } else {
      _success = false;
    }
  }
}
