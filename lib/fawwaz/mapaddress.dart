// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:flutter/services.dart';
// // import 'package:fluttertoast/fluttertoast.dart';

// class Mapaddress extends StatefulWidget {
//   @override
//   _MapaddressState createState() => _MapaddressState();
// }

// class _MapaddressState extends State<Mapaddress> {
// //   FlutterToast flutterToast;
//   final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

//   Position _currentPosition;
//   String _currentAddress;

// //   void showColoredToast() {
// //     flutterToast.showToast(
// //       child: Container(
// //         color: Colors.orange[100],
// //         padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
// //         decoration: BoxDecoration(
// //           borderRadius: BorderRadius.circular(15.0),
// //           color: Colors.greenAccent,
// //         ),
// //         child: Row(
// //           mainAxisSize: MainAxisSize.min,
// //           children: [
// //             Icon(Icons.check),
// //             SizedBox(
// //               width: 12.0,
// //             ),
// //             Text("open your location "),
// //           ],
// //         ),
// //       ),
// //       gravity: ToastGravity.BOTTOM,
// //       toastDuration: Duration(seconds: 5),
// //     );
// //   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.black),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         title: Text(
//           " Please Open a Location",
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             if (_currentPosition != null)
//               Container(
//                   width: 320,
//                   height: 130,
//                   color: Colors.orange[50],
//                   child: Center(
//                       child: Center(
//                     child: Text(
//                       _currentAddress,
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   ))),
//             FlatButton(
//               color: Colors.orange[50],
//               child: Text(
//                 "Get location",
//                 style: TextStyle(fontSize: 18),
//               ),
//               onPressed: () {
//                 _getCurrentLocation();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   _getCurrentLocation() {
//     geolocator
//         .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
//         .then((Position position) {
//       setState(() {
//         _currentPosition = position;
//       });

//       _getAddressFromLatLng();
//     }).catchError((e) {
//       print(e);
//     });
//   }

//   _getAddressFromLatLng() async {
//     try {
//       List<Placemark> p = await geolocator.placemarkFromCoordinates(
//           _currentPosition.latitude, _currentPosition.longitude);

//       Placemark place = p[0];

//       setState(() {
//         _currentAddress =
//             "${place.isoCountryCode},${place.locality}, ${place.postalCode},${place.name},${place.subLocality}, ${place.administrativeArea},${place.country}";
//       });
//     } catch (e) {
//       print(e);
//     }
//   }
// }
