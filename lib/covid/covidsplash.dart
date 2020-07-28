import 'package:flutter/material.dart';
import 'package:advanced_splashscreen/advanced_splashscreen.dart';
import 'package:koshish/covid/covid19.dart';

class Coviddd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdvancedSplashScreen(
        child: Covid(),
        seconds: 4,
        colorList: [
          Color(0xff9bcebb),
          Color(0xff9bceff),
          Color(0xff9bcfff),
        ],
        milliseconds: 1000,
        //appIcon: "assets/mlogo.jpg",
        appTitle: " covid 19",
        backgroundImage: "assets/covid.png",
        appTitleStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
            backgroundColor: Colors.white,
            fontWeight: FontWeight.bold),
        bgImageOpacity: 1,
      ),
    );
  }
}

// class Covidd extends StatefulWidget {
//   @override
//   _CoviddState createState() => _CoviddState();
// }

// class _CoviddState extends State<Covidd> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         title: Text(
//           "",
//           style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: ListView(
//         scrollDirection: Axis.vertical,
//         children: <Widget>[
//           Container(
//             child: Stack(
//               children: <Widget>[
//                 Container(
//                   height: 600,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: NetworkImage(
//                             'https://firebasestorage.googleapis.com/v0/b/koshishproject.appspot.com/o/mlogo.jpg?alt=media&token=0ed72167-0e91-4bad-adb5-0835646f3fbe'),
//                         fit: BoxFit.cover),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Container(
//                     height: 500,
//                     color: Colors.transparent,
//                     child: ListView(
//                       children: <Widget>[
//                         SizedBox(
//                           height: 80,
//                         ),
//                         // InkWell(
//                         //   onTap: () {
//                         //     Navigator.of(context).push(MaterialPageRoute(
//                         //         builder: (context) => Mapaddress()));
//                         //   },
//                         //   child: ClipRRect(
//                         //     borderRadius: BorderRadius.circular(12),
//                         //     child: Container(
//                         //       height: 100,
//                         //       margin: EdgeInsets.all(10),
//                         //       color: Colors.orange[50],
//                         //       child: Center(
//                         //         child: Text(
//                         //           " find the addess from location",
//                         //           style: TextStyle(
//                         //               color: Colors.black,
//                         //               fontSize: 18,
//                         //               fontWeight: FontWeight.bold),
//                         //         ),
//                         //       ),
//                         //     ),
//                         //   ),
//                         // ),
//                         // InkWell(
//                         //   onTap: () {
//                         //     Navigator.of(context).push(
//                         //         MaterialPageRoute(builder: (context) => Faw()));
//                         //   },
//                         //   child: ClipRRect(
//                         //     borderRadius: BorderRadius.circular(12),
//                         //     child: Container(
//                         //       height: 100,
//                         //       margin: EdgeInsets.all(10),
//                         //       color: Colors.orange[50],
//                         //       child: Center(
//                         //         child: Text(
//                         //           " Map Locator",
//                         //           style: TextStyle(
//                         //               color: Colors.black,
//                         //               fontSize: 18,
//                         //               fontWeight: FontWeight.bold),
//                         //         ),
//                         //       ),
//                         //     ),
//                         //   ),
//                         // ),
//                         InkWell(
//                           onTap: () {
//                             Navigator.of(context).push(MaterialPageRoute(
//                                 builder: (context) => Fawwazfavo()));
//                           },
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(12),
//                             child: Container(
//                               height: 100,
//                               margin: EdgeInsets.all(10),
//                               color: Colors.orange[50],
//                               child: Center(
//                                 child: Text(
//                                   " Fawwaz Favorite",
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         // InkWell(
//                         //   onTap: () {
//                         //     Navigator.of(context).push(MaterialPageRoute(
//                         //         builder: (context) => Marker()));
//                         //   },
//                         //   child: ClipRRect(
//                         //     borderRadius: BorderRadius.circular(12),
//                         //     child: Container(
//                         //       height: 100,
//                         //       margin: EdgeInsets.all(10),
//                         //       color: Colors.orange[50],
//                         //       child: Center(
//                         //         child: Text(
//                         //           " Fawwaz Marker",
//                         //           style: TextStyle(
//                         //               color: Colors.black,
//                         //               fontSize: 18,
//                         //               fontWeight: FontWeight.bold),
//                         //         ),
//                         //       ),
//                         //     ),
//                         //   ),
//                         // ),
//                         InkWell(
//                           onTap: () {
//                             Navigator.of(context).push(MaterialPageRoute(
//                                 builder: (context) => HomePage()));
//                           },
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(12),
//                             child: Container(
//                               height: 100,
//                               margin: EdgeInsets.all(10),
//                               color: Colors.orange[50],
//                               child: Center(
//                                 child: Text(
//                                   "cluster",
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),

//                         InkWell(
//                           onTap: () {
//                             Navigator.of(context).push(MaterialPageRoute(
//                                 builder: (context) => Yashoo()));
//                           },
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(12),
//                             child: Container(
//                               height: 100,
//                               margin: EdgeInsets.all(10),
//                               color: Colors.orange[50],
//                               child: Center(
//                                 child: Text(
//                                   "simple map activity",
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
