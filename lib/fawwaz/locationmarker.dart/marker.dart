// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class Marker extends StatefulWidget {
//   @override
//   _MarkerState createState() => _MarkerState();
// }

// class _MarkerState extends State<Marker> {
//   StreamSubscription<QuerySnapshot> subscription;
//   List<DocumentSnapshot> fawwazmap;
//   final CollectionReference collectionReference =
//       Firestore.instance.collection("fazzaz");

//   @override
//   void initState() {
//     super.initState();

//     subscription = collectionReference.snapshots().listen((datasnapshot) {
//       setState(() {
//         fawwazmap = datasnapshot.documents;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     subscription?.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(),
//         body: Stack(
//           children: <Widget>[
//             Container(
//               height: MediaQuery.of(context).size.height - 50.0,
//               width: MediaQuery.of(context).size.width,
//               child: GoogleMap(
//                 initialCameraPosition: CameraPosition(
//                     target: LatLng(40.7128, -74.0060), zoom: 12.0),
//                 // markers: Set.from(allMarkers),
//                 // onMapCreated: mapCreated,
//               ),
//             ),
//             Positioned(
//               bottom: 80.0,
//               right: 2,
//               left: 4,
//               child: Container(
//                 //  color: Colors.amber,
//                 width: MediaQuery.of(context).size.width,
//                 height: 100,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   //controller: _pageController,
//                   itemCount: fawwazmap.length,
//                   itemBuilder: (BuildContext context, int i) {
//                     // String name = fawwazmap[i].data['name'];
//                     String des = fawwazmap[i].data['des'];
//                     // String imgurl = fawwazmap[i].data['imgurl'];
//                     // String profile = fawwazmap[i].data['profile'];
//                     // String latitude = fawwazmap[i].data['latitude'];
//                     // String longitude = fawwazmap[i].data['longitude'];
//                     // String parent = fawwazmap[i].data['parent'];
//                     return InkWell(
//                       child: Center(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
//                           height: 90.0,
//                           width: 200,
//                           color: Colors.blue,
//                           child: Center(child: Text(des)),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             )
//           ],
//         ));
//   }
// }

// // import 'dart:async';
// // import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';

// // import 'package:google_maps_flutter/google_maps_flutter.dart';

// // class Marker extends StatefulWidget {
// //   @override
// //   _MarkerState createState() => _MarkerState();
// // }

// // class _MarkerState extends State<Marker> {
// //   StreamSubscription<QuerySnapshot> subscription;
// //   List<DocumentSnapshot> fawwazmap;
// //   final CollectionReference collectionReference =
// //       Firestore.instance.collection("fazzaz");

// //   @override
// //   void initState() {
// //     super.initState();

// //     subscription = collectionReference.snapshots().listen((datasnapshot) {
// //       setState(() {
// //         fawwazmap = datasnapshot.documents;
// //       });
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     subscription?.cancel();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(),
// //         body: Stack(
// //           children: <Widget>[
// //             Container(
// //               height: MediaQuery.of(context).size.height - 50.0,
// //               width: MediaQuery.of(context).size.width,
// //               child: GoogleMap(
// //                 initialCameraPosition: CameraPosition(
// //                     target: LatLng(40.7128, -74.0060), zoom: 12.0),
// //                 // markers: Set.from(allMarkers),
// //                 // onMapCreated: mapCreated,
// //               ),
// //             ),
// //             Positioned(
// //               bottom: 80.0,
// //               right: 2,
// //               left: 4,
// //               child: Container(
// //                 //  color: Colors.amber,
// //                 width: MediaQuery.of(context).size.width,
// //                 height: 100,
// //                 child: ListView.builder(
// //                   scrollDirection: Axis.horizontal,
// //                   //controller: _pageController,
// //                   itemCount: fawwazmap.length,
// //                   itemBuilder: (BuildContext context, int i) {
// //                     // String name = fawwazmap[i].data['name'];
// //                     String des = fawwazmap[i].data['des'];
// //                     // String imgurl = fawwazmap[i].data['imgurl'];
// //                     // String profile = fawwazmap[i].data['profile'];
// //                     // String latitude = fawwazmap[i].data['latitude'];
// //                     // String longitude = fawwazmap[i].data['longitude'];
// //                     // String parent = fawwazmap[i].data['parent'];
// //                     return InkWell(
// //                       child: Center(
// //                         child: Container(
// //                           margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
// //                           height: 90.0,
// //                           width: 200,
// //                           color: Colors.blue,
// //                           child: Center(child: Text(des)),
// //                           decoration: BoxDecoration(
// //                             borderRadius: BorderRadius.circular(10),
// //                           ),
// //                         ),
// //                       ),
// //                     );
// //                   },
// //                 ),
// //               ),
// //             )
// //           ],
// //         ));
// //   }
// // }
