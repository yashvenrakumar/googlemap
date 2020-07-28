import 'package:flutter/material.dart';
//import 'package:chess_vectors_flutter/chess_vectors_flutter.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Draggable(
              data: 5,
              child: Container(
                width: 100.0,
                height: 100.0,
                child: Center(
                  child: Text(
                    "5",
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                ),
                color: Colors.pink,
              ),
              feedback: Container(
                width: 100.0,
                height: 100.0,
                child: Center(
                  child: Text(
                    "5",
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                ),
                color: Colors.pink,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.green,
                  child: DragTarget(
                    builder: (context, List<int> candidateData, rejectedData) {
                      print(candidateData);
                      return Center(
                          child: Text(
                        "Even",
                        style: TextStyle(color: Colors.white, fontSize: 22.0),
                      ));
                    },
                    onWillAccept: (data) {
                      return true;
                    },
                    onAccept: (data) {
                      if (data % 2 == 0) {
                        scaffoldKey.currentState
                            .showSnackBar(SnackBar(content: Text("Correct!")));
                      } else {
                        scaffoldKey.currentState
                            .showSnackBar(SnackBar(content: Text("Wrong!")));
                      }
                    },
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.deepPurple,
                  child: DragTarget(
                    builder: (context, List<int> candidateData, rejectedData) {
                      return Center(
                          child: Text(
                        "Odd",
                        style: TextStyle(color: Colors.white, fontSize: 22.0),
                      ));
                    },
                    onWillAccept: (data) {
                      return true;
                    },
                    onAccept: (data) {
                      if (data % 2 != 0) {
                        scaffoldKey.currentState
                            .showSnackBar(SnackBar(content: Text("Correct!")));
                      } else {
                        scaffoldKey.currentState
                            .showSnackBar(SnackBar(content: Text("Wrong!")));
                      }
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
