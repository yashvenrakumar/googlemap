import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:like_button/like_button.dart';
// import 'package:swipe_gesture_recognizer/swipe_gesture_recognizer.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> with TickerProviderStateMixin {
  List<String> welcomeImages = [
    "https://i.pinimg.com/474x/bd/68/85/bd6885e1564f9985b9344e4b38fcec3a.jpg",
    "https://i.pinimg.com/474x/52/eb/04/52eb04fb6559aa0be13b91711d4eb853.jpg",
    "https://i.pinimg.com/474x/c4/2f/c9/c42fc9747a8f08954ce48bb90bdc39bd.jpg",
    "https://i.pinimg.com/474x/5d/8e/86/5d8e86f3cf0fb2934c658b5757da4edf.jpg",
    "https://i.pinimg.com/474x/03/b8/dc/03b8dce687670fa254e90e7fb3705d02.jpg",
    "https://i.pinimg.com/474x/57/bf/c4/57bfc40d6f1ed9f7531265e85491168c.jpg",
    "https://i.pinimg.com/474x/0a/5d/c4/0a5dc49626f3d4a599b13c3b1d999d26.jpg",
    "https://i.pinimg.com/474x/d9/70/5a/d9705a1c53a80ebdc4bca9f86f960284.jpg",
    "https://i.pinimg.com/474x/86/d6/b3/86d6b34b341d08c6b84adb48bfcf3ac2.jpg",
    "https://i.pinimg.com/474x/5e/05/f6/5e05f6701c13ff9253dd6e3a37a42e1c.jpg",
    "https://i.pinimg.com/474x/71/20/93/71209365b66d0e98fef29ef811ac4de8.jpg",
    "https://i.pinimg.com/474x/da/60/26/da6026f0b98f96dfa36093446e826df7.jpg",
    "https://i.pinimg.com/474x/64/42/36/6442369862bac9bde4084f78fea02fe7.jpg",
    "https://i.pinimg.com/474x/55/a1/7d/55a17d5d55fb3e23a23c988bf2067b08.jpg",
    "https://i.pinimg.com/474x/c4/2f/c9/c42fc9747a8f08954ce48bb90bdc39bd.jpg",
    "https://i.pinimg.com/474x/5d/8e/86/5d8e86f3cf0fb2934c658b5757da4edf.jpg",
    "https://i.pinimg.com/474x/03/b8/dc/03b8dce687670fa254e90e7fb3705d02.jpg",
    "https://i.pinimg.com/474x/57/bf/c4/57bfc40d6f1ed9f7531265e85491168c.jpg",
    "https://i.pinimg.com/474x/0a/5d/c4/0a5dc49626f3d4a599b13c3b1d999d26.jpg",
    "https://i.pinimg.com/474x/d9/70/5a/d9705a1c53a80ebdc4bca9f86f960284.jpg",
    "https://i.pinimg.com/474x/86/d6/b3/86d6b34b341d08c6b84adb48bfcf3ac2.jpg",
    "https://i.pinimg.com/474x/5e/05/f6/5e05f6701c13ff9253dd6e3a37a42e1c.jpg",
    "https://i.pinimg.com/474x/71/20/93/71209365b66d0e98fef29ef811ac4de8.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    CardController controller; //Use this to trigger swap.
    int count = 1;
    return new Scaffold(
      body:
          //   SwipeGestureRecognizer(
          // onSwipeLeft: () {
          //   _showToast();
          // },
          // onSwipeRight: () {
          //   _showToast1();
          // },
          // child:

          ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height - 160,
            color: Colors.blue[50],
            margin: EdgeInsets.all(10),
            child: Draggable<int>(
              data: welcomeImages.length,
              onDragCompleted: () {
                // count = count + 1;
              },
              feedback: Container(
                color: Colors.transparent,
                width: 350,
                height: 500,
                child: TinderSwapCard(
                  swipeUp: true,
                  swipeDown: true,
                  allowVerticalMovement: true,
                  orientation: AmassOrientation.BOTTOM,
                  totalNum: count,
                  stackNum: 3,
                  swipeEdge: 4.0,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  maxHeight: MediaQuery.of(context).size.height * 0.9,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.height * 0.8,
                  cardBuilder: (context, index) => Container(
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Card(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 500,
                                child: Image.network(
                                  "${welcomeImages[count++]}",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  cardController: controller = CardController(),
                  swipeUpdateCallback:
                      (DragUpdateDetails details, Alignment align) {
                    /// Get swiping card's alignment
                    if (align.x < 0) {
                      //Card is LEFT swiping
                    } else if (align.x > 0) {
                      //Card is RIGHT swiping
                    }
                  },
                  swipeCompleteCallback:
                      (CardSwipeOrientation orientation, int index) {
                    /// Get orientation & index of swiped card!
                  },
                ),
              ),
              childWhenDragging: TinderSwapCard(
                swipeUp: true,
                swipeDown: true,
                allowVerticalMovement: true,
                orientation: AmassOrientation.BOTTOM,
                totalNum: count,
                stackNum: 3,
                swipeEdge: 4.0,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                maxHeight: MediaQuery.of(context).size.height * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.height * 0.8,
                cardBuilder: (context, index) => Container(
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {
                            print(count);
                          },
                          child: Card(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 500,
                                child: Image.network(
                                  "${welcomeImages[count]}",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width - 160,
                          margin: EdgeInsets.fromLTRB(10, 10, 30, 50),
                          color: Colors.white.withOpacity(.4),
                          child: Center(
                              child: Text(
                            "Profile name,age",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          )),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 60,
                          margin: EdgeInsets.fromLTRB(1, 1, 30, 50),
                          // margin: EdgeInsets.fromLTRB(20, 0, 0, 40),
                          child: IconButton(
                              icon: Icon(
                                Icons.favorite_border,
                                size: 50,
                                color: Colors.red,
                              ),
                              onPressed: () {}),
                        ),
                      )
                    ],
                  ),
                ),
                cardController: controller = CardController(),
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                    //Card is LEFT swiping
                  } else if (align.x > 0) {
                    //Card is RIGHT swiping
                  }
                },
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                  /// Get orientation & index of swiped card!
                },
              ),
              child: new TinderSwapCard(
                swipeUp: true,
                swipeDown: true,
                allowVerticalMovement: true,
                orientation: AmassOrientation.BOTTOM,
                totalNum: count = count + 1,
                stackNum: 3,
                swipeEdge: 4.0,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                maxHeight: MediaQuery.of(context).size.height * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.height * 0.8,
                cardBuilder: (context, index) => Container(
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {
                            print(count);
                          },
                          child: Card(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 500,
                                child: Image.network(
                                  "${welcomeImages[count]}",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width - 160,
                          margin: EdgeInsets.fromLTRB(10, 10, 30, 50),
                          color: Colors.white.withOpacity(.4),
                          child: Center(
                              child: Text(
                            "Profile name,age",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          )),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 60,
                          margin: EdgeInsets.fromLTRB(1, 1, 30, 50),
                          // margin: EdgeInsets.fromLTRB(20, 0, 0, 40),
                          child: IconButton(
                              icon: Icon(
                                Icons.favorite_border,
                                size: 50,
                                color: Colors.red,
                              ),
                              onPressed: () {}),
                        ),
                      )
                    ],
                  ),
                ),
                cardController: controller = CardController(),
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                    //Card is LEFT swiping
                  } else if (align.x > 0) {
                    //Card is RIGHT swiping
                  }
                },
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                  /// Get orientation & index of swiped card!
                },
              ),
            ),
          ),
          Container(
            height: 70,
            color: Colors.blue[50],
            margin: EdgeInsets.all(10),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue[200],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 150,
                      height: 50,
                      color: Colors.orange,
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                margin: EdgeInsets.all(2),
                                width: 90,
                                color: Colors.blue[50],
                                child: Center(child: Text("Date")),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                margin: EdgeInsets.all(3),
                                width: 50,
                                color: Colors.blue[50],
                                child: Center(child: Text("Buddy")),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue[200],
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

// new TinderSwapCard(
//             swipeUp: true,
//             swipeDown: true,
//             orientation: AmassOrientation.BOTTOM,
//             totalNum: welcomeImages.length,
//             stackNum: 3,
//             swipeEdge: 4.0,
//             maxWidth: MediaQuery.of(context).size.width * 0.9,
//             maxHeight: MediaQuery.of(context).size.width * 0.9,
//             minWidth: MediaQuery.of(context).size.width * 0.8,
//             minHeight: MediaQuery.of(context).size.width * 0.8,
//             cardBuilder: (context, index) => Card(
//               child: Image.asset(
//                 '${welcomeImages[index]}',
//                 fit: BoxFit.cover,
//               ),
//             ),
//             cardController: controller = CardController(),
//             swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
//               /// Get swiping card's alignment
//               if (align.x < 0) {
//                 //Card is LEFT swiping
//               } else if (align.x > 0) {
//                 //Card is RIGHT swiping
//               }
//             },
//             swipeCompleteCallback:
//                 (CardSwipeOrientation orientation, int index) {
//               /// Get orientation & index of swiped card!
//             },
//           ),

// FlutterToast fToast;

// @override
// void initState() {
//   super.initState();
//   fToast = FlutterToast(context);
// }

// _showToast() {
//   Widget toast = Container(
//     width: 220,
//     height: 100,
//     padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(12),
//       color: Colors.transparent,
//     ),
//     child: Transform(
//       transform: new Matrix4.identity()..rotateZ(15 * 3.1415927 / 180),
//       child: Center(
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(13),
//           child: Container(
//             width: 250,
//             height: 90,
//             color: Colors.orange[100],
//             child: Row(
//               children: [
//                 Icon(
//                   Icons.favorite,
//                   color: Colors.red,
//                   size: 70,
//                 ),
//                 Center(
//                     child: Text(
//                   " LIKE ",
//                   style: TextStyle(
//                       color: Colors.red,
//                       fontSize: 40,
//                       fontWeight: FontWeight.w900),
//                 ))
//               ],
//             ),
//           ),
//         ),
//       ),
//     ),
//   );

//   fToast.showToast(
//     child: toast,
//     gravity: ToastGravity.CENTER,
//     toastDuration: Duration(milliseconds: 280),
//   );
// }

// _showToast1() {
//   Widget toast = Container(
//     // width: 270,
//     height: 100,
//     padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(12),
//       color: Colors.transparent,
//     ),
//     child: Transform(
//       transform: new Matrix4.identity()..rotateZ(-2 * 3.1415927 / 9),
//       child: Center(
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(13),
//           child: Container(
//             width: 270,
//             height: 90,
//             color: Colors.orange[100],
//             child: Row(
//               children: [
//                 Icon(
//                   Icons.favorite,
//                   color: Colors.red,
//                   size: 70,
//                 ),
//                 Center(
//                     child: Text(
//                   " DISLIKE ",
//                   style: TextStyle(
//                       color: Colors.red,
//                       fontSize: 40,
//                       fontWeight: FontWeight.w900),
//                 ))
//               ],
//             ),
//           ),
//         ),
//       ),
//     ),
//   );

//   fToast.showToast(
//     child: toast,
//     gravity: ToastGravity.CENTER,
//     toastDuration: Duration(milliseconds: 280),
//   );
// }

// child: LikeButton(
//   animationDuration: Duration(microseconds: 100),
//   size: 40,
//   circleColor: CircleColor(
//       start: Colors.red, end: Colors.green),
//   bubblesColor: BubblesColor(
//     dotPrimaryColor: Colors.red,
//     dotSecondaryColor: Colors.red,
//   ),
//   likeBuilder: (bool isLiked) {
//     return Icon(
//       isLiked ? Icons.refresh : Icons.favorite_border,
//       color: isLiked ? Colors.red : Colors.red,
//       size: 40,
//     );
//   },
//   likeCount: 999,
//   countBuilder:
//       (int count, bool isLiked, String text) {
//     var color = isLiked ? Colors.black : Colors.black;
//     Widget result;
//     if (count == 0) {
//       result = Text(
//         "love",
//         style: TextStyle(
//             fontSize: 20,
//             color: color,
//             backgroundColor:
//                 Colors.white.withOpacity(0.5)),
//       );
//     } else
//       result = Text(
//         count >= 1000
//             ? (count / 1000.0).toStringAsFixed(1) +
//                 'k'
//             : text,
//         style: TextStyle(
//             fontSize: 20,
//             color: color,
//             backgroundColor:
//                 Colors.white.withOpacity(0.5)),
//       );
//     return result;
//   },
// ),
