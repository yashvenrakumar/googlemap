import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Ani2 extends StatefulWidget {
  static const TextStyle goldcoinGreyStyle = TextStyle(
    color: Colors.grey,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle goldCoinWhiteStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle greyStyle = TextStyle(
    fontSize: 40.0,
    color: Colors.grey,
  );
  static const TextStyle whiteStyle = TextStyle(
    fontSize: 40.0,
    color: Colors.white,
  );

  static const TextStyle boldStyle = TextStyle(
    fontSize: 50.0,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle descriptionGreyStyle = TextStyle(
    color: Colors.grey,
    fontSize: 20.0,
  );

  static const TextStyle descriptionWhiteStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
  );

  @override
  _Ani2State createState() => _Ani2State();
}

class _Ani2State extends State<Ani2> {
  final pages = [
    Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "GoldCoin",
                  style: Ani2.goldcoinGreyStyle,
                ),
                Text(
                  "Skip",
                  style: Ani2.goldcoinGreyStyle,
                ),
              ],
            ),
          ),
          Image.asset("assets/mlogo.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Online",
                  style: Ani2.greyStyle,
                ),
                Text(
                  "Gambling",
                  style: Ani2.boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Temporibus autem aut\n"
                  "officiis debitis aut rerum\n"
                  "necessitatibus",
                  style: Ani2.descriptionGreyStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF55006c),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "GoldCoin",
                  style: Ani2.goldCoinWhiteStyle,
                ),
                Text(
                  "Skip",
                  style: Ani2.goldCoinWhiteStyle,
                ),
              ],
            ),
          ),
          Image.asset("assets/koshish.png "),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Online",
                  style: Ani2.whiteStyle,
                ),
                Text(
                  "Gaming",
                  style: Ani2.boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Excepteur sint occaecat cupidatat\n"
                  "non proident, sunt in\n"
                  "culpa qui officia",
                  style: Ani2.descriptionWhiteStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "GoldCoin",
                  style: Ani2.goldCoinWhiteStyle,
                ),
                Text(
                  "Skip",
                  style: Ani2.goldCoinWhiteStyle,
                ),
              ],
            ),
          ),
          Image.asset("assets/koshish.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Online",
                  style: Ani2.whiteStyle,
                ),
                Text(
                  "Gambling",
                  style: Ani2.boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Temporibus autem aut\n"
                  "officiis debitis aut rerum\n"
                  "necessitatibus",
                  style: Ani2.descriptionWhiteStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LiquidSwipe(
          pages: pages,
          enableLoop: true,
          fullTransitionValue: 300,
          enableSlideIcon: true,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
        ),
      ),
    );
  }
}
