// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:geolocator/geolocator.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

//   Position _currentPosition;
//   String _currentAddress;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Location"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             if (_currentPosition != null)
//               Container(
//                   width: 300,
//                   height: 100,
//                   color: Colors.orange[50],
//                   child: Center(child: Text(_currentAddress))),
//             FlatButton(
//               child: Text("Get location"),
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
