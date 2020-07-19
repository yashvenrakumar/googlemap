import 'package:flutter/material.dart';
//import 'package:koshish/texting/test.dart';
import 'fawwaz/googlemap.dart';
// import 'package:koshish/tabbar/categary.dart';
// import 'package:koshish/tabbar/local.dart';
// import 'package:koshish/tabbar/offer.dart';
// import 'package:koshish/tabbar/sales.dart';
// import 'tabbar/home.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Yash(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Loma(),
//     );
//   }
// }

// class Loma extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: DefaultTabController(
//         length: 5,
//         child: new Scaffold(
//           body: TabBarView(
//             children: [
//               Home(),
//               Offer(),
//               Sale(),
//               Categary(),
//               Local(),
//             ],
//           ),
//           bottomNavigationBar: new TabBar(
//             tabs: [
//               Tab(
//                   child: Column(
//                 children: <Widget>[
//                   Center(
//                       child: Icon(
//                     Icons.home,
//                     size: 25,
//                   )),
//                   Center(child: Text("Home"))
//                 ],
//               )),
//               Tab(
//                   child: Column(
//                 children: <Widget>[
//                   Center(
//                       child: Icon(
//                     Icons.local_offer,
//                     size: 25,
//                   )),
//                   Center(
//                       child: Text(
//                     "Offer",
//                   ))
//                 ],
//               )),
//               Tab(
//                   child: Column(
//                 children: <Widget>[
//                   Center(
//                       child: Icon(
//                     Icons.local_mall,
//                     size: 25,
//                   )),
//                   Center(child: Text("Sales"))
//                 ],
//               )),
//               Tab(
//                   child: Column(
//                 children: <Widget>[
//                   Center(
//                       child: Icon(
//                     Icons.category,
//                     size: 25,
//                   )),
//                   Center(child: Text("Categary"))
//                 ],
//               )),
//               Tab(
//                   child: Column(
//                 children: <Widget>[
//                   Center(
//                       child: Icon(
//                     Icons.local_convenience_store,
//                     size: 25,
//                   )),
//                   Center(child: Text("Local"))
//                 ],
//               )),
//             ],
//             isScrollable: true,
//             labelColor: Colors.orange[800],
//             unselectedLabelColor: Colors.orange[300],
//             indicatorSize: TabBarIndicatorSize.label,
//             indicatorColor: Colors.orange[500],
//           ),
//           backgroundColor: Colors.white,
//         ),
//       ),
//     );
//   }
// }
