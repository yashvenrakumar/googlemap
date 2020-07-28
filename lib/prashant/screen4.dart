import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    bool accepted = false;

    GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(),
      body: Container(
        child: ListView(
          children: <Widget>[
            Draggable(
              //feedbackOffset: Offset.zero,
              data: ["yash", "kumar"],
              child: Center(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.black,
                ),
              ),
              feedback: Container(
                height: 200,
                width: 200,
                color: Colors.black,
              ),
              childWhenDragging: Container(
                height: 200,
                width: 200,
                color: Colors.orange,
              ),
            ),
            SizedBox(
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.green,
                  child: DragTarget(
                    builder:
                        (context, List<String> candidateData, rejectedData) {
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

// import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class Screen4 extends StatelessWidget {
//   var accpeptedData = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           DraggableWidget(
//             offset: Offset(100.0, 100.0),
//           ),
//           Positioned(
//             top: 100.0,
//             left: 100.0,
//             child: DragTarget(
//               builder: (BuildContext context, List<dynamic> accepted,
//                       List<dynamic> rejected) =>
//                   Container(
//                 height: 200.0,
//                 width: 200.0,
//                 decoration: BoxDecoration(color: Colors.cyan),
//                 child: Center(
//                   child: Text(accpeptedData.toString()),
//                 ),
//               ),
//               onAccept: (int data) {
//                 accpeptedData = data;
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class DraggableWidget extends StatefulWidget {
//   final Offset offset;

//   DraggableWidget({Key key, this.offset}) : super(key: key);

//   @override
//   _DraggableWidgetState createState() => _DraggableWidgetState();
// }

// class _DraggableWidgetState extends State<DraggableWidget> {
//   Offset offset = Offset(0.0, 0.0);
//   @override
//   void initState() {
//     super.initState();
//     offset = widget.offset;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       bottom: offset.dy,
//       left: offset.dx,
//       child: Draggable(
//         data: 20,
//         child: Container(
//           width: 200.0,
//           height: 200.0,
//           color: Colors.blue,
//           child: Center(
//             child: Text(
//               "Hi Pawan",
//               style: TextStyle(
//                 decoration: TextDecoration.none,
//               ),
//             ),
//           ),
//         ),
//         feedback: Container(
//           width: 200.0,
//           height: 200.0,
//           color: Colors.blue.withOpacity(0.3),
//           child: Center(
//             child: Text(
//               "Hi Pawan",
//               style: TextStyle(
//                 decoration: TextDecoration.none,
//               ),
//             ),
//           ),
//         ),
//         onDraggableCanceled: (v, o) {
//           setState(() {
//             offset = o;
//           });
//         },
//       ),
//     );
//   }
// }
