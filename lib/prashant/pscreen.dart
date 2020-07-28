import 'package:flutter/material.dart';
import 'package:swipeable_card/swipeable_card.dart';

class Pscreen extends StatefulWidget {
  @override
  _PscreenState createState() => _PscreenState();
}

class _PscreenState extends State<Pscreen> {
  final List<CardExample> cards = [
    CardExample(color: Colors.red, text: "First card"),
    CardExample(color: Colors.blue, text: "Second card"),
    CardExample(color: Colors.orange),
    CardExample(color: Colors.indigo),
    CardExample(color: Colors.green, text: "The next card is the last"),
    CardExample(color: Colors.purple, text: "This is the last card"),
  ];
  int currentCardIndex = 0;

  @override
  Widget build(BuildContext context) {
    SwipeableWidgetController _cardController = SwipeableWidgetController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            if (currentCardIndex < cards.length)
              SwipeableWidgetSlide(
                key: ObjectKey(currentCardIndex),
                child: cards[currentCardIndex],
                onLeftSwipe: () => swipeLeft(),
                onRightSwipe: () => swipeRight(),
                // onTopSwipe: () => swipeTop(),
                // onBottomSwipe: () => swipeBottom(),
                nextCards: <Widget>[
                  // show next card
                  // if there are no next cards, show nothing
                  if (!(currentCardIndex + 1 >= cards.length))
                    Align(
                      alignment: Alignment.center,
                      child: cards[currentCardIndex + 1],
                    ),
                ],
              )
            else
              // if the deck is complete, add a button to reset deck
              Center(
                child: FlatButton(
                  child: Text("Reset deck"),
                  onPressed: () => setState(() => currentCardIndex = 0),
                ),
              ),

            // only show the card controlling buttons when there are cards
            // otherwise, just hide it
            if (currentCardIndex < cards.length)
              cardControllerRow(_cardController),
          ],
        ),
      ),
    );
  }

  void swipeLeft() {
    print("left");

    // NOTE: it is your job to change the card
    setState(() => currentCardIndex++);
  }

  void swipeRight() {
    print("right");
    setState(() => currentCardIndex++);
  }

  // void swipeTop() {
  //   print("top");
  //   setState(() => currentCardIndex++);
  // }

  // void swipeBottom() {
  //   print("top");
  //   setState(() => currentCardIndex++);
  // }

  Widget cardControllerRow(SwipeableWidgetController cardController) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FlatButton(
          child: Text("Left"),
          onPressed: () => cardController.triggerSwipeLeft(),
        ),
        FlatButton(
          child: Text("Right"),
          onPressed: () => cardController.triggerSwipeRight(),
        ),
      ],
    );
  }
}

class CardExample extends StatelessWidget {
  const CardExample({
    Key key,
    this.color = Colors.indigo,
    this.text = "Card Example",
  }) : super(key: key);
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 320,

      // Warning: hard-coding values like this is a bad practice
      padding: EdgeInsets.all(38.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          width: 7.0,
          color: Colors.transparent.withOpacity(0.3),
        ),
      ),

      child: Text(
        text,
        style: TextStyle(
          fontSize: 36.0,
          // color: Colors.white,
          color: Colors.white.withOpacity(0.8),
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_tindercard/flutter_tindercard.dart';
// // import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class Pscreen extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       home: ExampleHomePage(),
//     );
//   }
// }

// class ExampleHomePage extends StatefulWidget {
//   @override
//   _ExampleHomePageState createState() => _ExampleHomePageState();
// }

// class _ExampleHomePageState extends State<ExampleHomePage>
//     with TickerProviderStateMixin {
//   List<String> welcomeImages = [
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//     "assets/covid.png",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     // ignore: unused_local_variable
//     CardController controller;

//     return Scaffold(
//       // backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.orange[100],
//         elevation: 0,
//       ),
//       body: Container(
//         color: Colors.orange[50],
//         // height: MediaQuery.of(context).size.height * 0.7,
//         child: Container(
//           height: MediaQuery.of(context).size.height - 250,
//           child: Stack(
//             children: <Widget>[
//               Align(
//                   alignment: Alignment.topCenter,
//                   child: Container(
//                     color: Colors.amber,
//                     // height: MediaQuery.of(context).size.height - 100,
//                     child: TinderSwapCard(
//                       orientation: AmassOrientation.BOTTOM,
//                       totalNum: welcomeImages.length,
//                       stackNum: 12,
//                       swipeEdge: 3.0,
//                       maxWidth: MediaQuery.of(context).size.width,
//                       maxHeight: MediaQuery.of(context).size.width,
//                       minWidth: MediaQuery.of(context).size.width * 0.8,
//                       minHeight: MediaQuery.of(context).size.width * 0.8,
//                       cardBuilder: (context, index) => Card(
//                         child: Image.asset(
//                           '${welcomeImages[index]}',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       cardController: controller = CardController(),
//                       swipeUpdateCallback:
//                           (DragUpdateDetails details, Alignment align) {
//                         if (align.x < 0) {
//                         } else if (align.x > 0) {}
//                       },
//                       swipeCompleteCallback:
//                           (CardSwipeOrientation orientaion, int index) {},
//                       animDuration: 50,
//                       swipeDown: false,
//                       swipeUp: false,
//                       allowVerticalMovement: false,
//                     ),
//                   ))
//             ],
//           ),
//         ),
//       ),
//       // bottomNavigationBar: CurvedNavigationBar(
//       //   backgroundColor: Colors.orange[50],
//       //   color: Colors.white,
//       //   buttonBackgroundColor: Colors.white,
//       //   height: 70.0,
//       //   items: <Widget>[
//       //     Icon(
//       //       Icons.home,
//       //       size: 30.0,
//       //       color: Colors.redAccent,
//       //     ),
//       //     Icon(
//       //       Icons.chat_bubble,
//       //       size: 30.0,
//       //       color: Colors.redAccent,
//       //     ),
//       //     Icon(
//       //       FontAwesomeIcons.heart,
//       //       size: 30.0,
//       //       color: Colors.redAccent,
//       //     ),
//       //     Icon(
//       //       Icons.directions_bike,
//       //       size: 30.0,
//       //       color: Colors.redAccent,
//       //     ),
//       //     Icon(
//       //       Icons.location_on,
//       //       size: 30.0,
//       //       color: Colors.redAccent,
//       //     ),
//       //   ],
//       // ),
//     );
//   }
// }
