import 'package:flutter/material.dart';

import 'enteritem.dart';

class Shopp extends StatefulWidget {
  @override
  _ShoppState createState() => _ShoppState();
}

class _ShoppState extends State<Shopp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.orange),
        backgroundColor: Colors.orange[50],
        centerTitle: true,
        title: Text(
          "Your Shop",
          style: TextStyle(color: Colors.orange),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange[50],
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => EnterItem()));
        },
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.orange,
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'dart:async';
// import 'dart:io';

// class EnterItem extends StatefulWidget {
//   @override
//    _EnterItemState createState() => _EnterItemState();
// }

// class _EnterItemState extends State<EnterItem> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
//   int i = 1;
//   File _image;
//   File _image1;
//   File _image2;
//   File _image3;
//   File _image4;
//   File _image5;
//   File _image6;

//   final picker = ImagePicker();
//   final picker1 = ImagePicker();
//   final picker2 = ImagePicker();
//   final picker3 = ImagePicker();
//   final picker4 = ImagePicker();
//   final picker5 = ImagePicker();
//   final picker6 = ImagePicker();

//   FlutterToast flutterToast;

//   final FirebaseStorage _storage =
//       FirebaseStorage(storageBucket: 'gs://koshishproject.appspot.com/');
//   // ignore: unused_field
//   StorageUploadTask _uploadTask;

//   // ignore: unused_element
//   void _startUpload() {
//     /// Unique file name for the file
//     String filePath = 'images/${DateTime.now()}.png';
//     setState(() {
//       _uploadTask = _storage.ref().child(filePath).putFile(_image);
//     });
//   }

//   void _startUpload1() {
//     /// Unique file name for the file
//     String filePath = 'images/1.png';
//     setState(() {
//       _uploadTask = _storage.ref().child(filePath).putFile(_image1);
//     });
//   }

//   void _startUpload2() {
//     /// Unique file name for the file
//     String filePath = 'images/2.png';
//     setState(() {
//       _uploadTask = _storage.ref().child(filePath).putFile(_image2);
//     });
//   }

//   void _startUpload3() {
//     /// Unique file name for the file
//     String filePath = 'images/3.png';
//     setState(() {
//       _uploadTask = _storage.ref().child(filePath).putFile(_image3);
//     });
//   }

//   void _startUpload4() {
//     /// Unique file name for the file
//     String filePath = 'images/4.png';
//     setState(() {
//       _uploadTask = _storage.ref().child(filePath).putFile(_image4);
//     });
//   }

//   void _startUpload5() {
//     /// Unique file name for the file
//     String filePath = 'images/5.png';
//     setState(() {
//       _uploadTask = _storage.ref().child(filePath).putFile(_image5);
//     });
//   }

//   void _startUpload6() {
//     /// Unique file name for the file
//     String filePath = 'images/6.png';
//     setState(() {
//       _uploadTask = _storage.ref().child(filePath).putFile(_image6);
//     });
//   }

//   ///
//   ///toast
//   void showColoredToast() {
//     flutterToast.showToast(
//       child: Container(
//         color: Colors.orange[100],
//         padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15.0),
//           color: Colors.greenAccent,
//         ),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(Icons.check),
//             SizedBox(
//               width: 12.0,
//             ),
//             Text("sucessfully uploaded waiting..."),
//           ],
//         ),
//       ),
//       gravity: ToastGravity.BOTTOM,
//       toastDuration: Duration(seconds: 5),
//     );
//   }

//   Future getImage() async {
//     final pickedFile = await picker.getImage(source: ImageSource.gallery);
//     setState(() {
//       _image = File(pickedFile.path);
//     });
//   }

//   Future getImage1() async {
//     final pickedFile1 = await picker.getImage(source: ImageSource.gallery);
//     setState(() {
//       _image1 = File(pickedFile1.path);
//     });
//   }

//   Future getImage2() async {
//     final pickedFile2 = await picker.getImage(source: ImageSource.gallery);
//     setState(() {
//       _image2 = File(pickedFile2.path);
//     });
//   }

//   Future getImage3() async {
//     final pickedFile3 = await picker.getImage(source: ImageSource.gallery);
//     setState(() {
//       _image3 = File(pickedFile3.path);
//     });
//   }

//   Future getImage4() async {
//     final pickedFile4 = await picker.getImage(source: ImageSource.gallery);
//     setState(() {
//       _image4 = File(pickedFile4.path);
//     });
//   }

//   Future getImage5() async {
//     final pickedFile5 = await picker.getImage(source: ImageSource.gallery);
//     setState(() {
//       _image5 = File(pickedFile5.path);
//     });
//   }

//   Future getImage6() async {
//     final pickedFile6 = await picker.getImage(source: ImageSource.gallery);

//     setState(() {
//       _image6 = File(pickedFile6.path);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         iconTheme: IconThemeData(color: Colors.orange[800]),
//         backgroundColor: Colors.orange[50],
//         title: Text(
//           "Product Details",
//           style: TextStyle(color: Colors.orange[800]),
//         ),
//       ),
//       body: ListView(
//         scrollDirection: Axis.vertical,
//         children: <Widget>[
//           // photos
//           //
//           Container(
//             height: 220,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: <Widget>[
//                 Row(
//                   children: <Widget>[
//                     Container(
//                       width: 180,
//                       height: MediaQuery.of(context).size.height,
//                       child: Stack(
//                         children: <Widget>[
//                           Align(
//                               alignment: Alignment.center,
//                               child: _image != null
//                                   ? Container(
//                                       margin: EdgeInsets.all(10),
//                                       color: Colors.orange[50],
//                                       child: Image.file(_image),
//                                     )
//                                   : Container(
//                                       margin: EdgeInsets.all(10),
//                                       color: Colors.orange[50],
//                                     )),
//                           Align(
//                             alignment: Alignment.center,
//                             child: InkWell(
//                               onTap: () {
//                                 if (_image == null) {
//                                   getImage();
//                                 } else {
//                                   _startUpload();
//                                   showColoredToast();
//                                   _scaffoldKey.currentState.showSnackBar(
//                                       new SnackBar(
//                                           content:
//                                               new Text('uploaded the file')));
//                                 }
//                               },
//                               child: CircleAvatar(
//                                 backgroundColor: Colors.orange[50],
//                                 radius: 25,
//                                 child: _image == null
//                                     ? Icon(
//                                         Icons.add,
//                                         size: 30,
//                                         color: Colors.orange[800],
//                                       )
//                                     : Icon(
//                                         Icons.file_upload,
//                                         size: 30,
//                                         color: Colors.orange[800],
//                                       ),
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomRight,
//                             child: InkWell(
//                               onTap: () {
//                                 if (_image != null) {
//                                   getImage();
//                                 } else {
//                                   _startUpload();
//                                   showColoredToast();
//                                 }
//                               },
//                               child: _image != null
//                                   ? CircleAvatar(
//                                       backgroundColor: Colors.orange[50],
//                                       radius: 15,
//                                       child: Icon(
//                                         Icons.clear,
//                                         color: Colors.orange[800],
//                                       ),
//                                     )
//                                   : Container(
//                                       height: 1,
//                                       width: 1,
//                                     ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: 180,
//                       height: MediaQuery.of(context).size.height,
//                       child: Stack(
//                         children: <Widget>[
//                           Align(
//                               alignment: Alignment.center,
//                               child: _image1 != null
//                                   ? Container(
//                                       margin: EdgeInsets.all(10),
//                                       color: Colors.orange[50],
//                                       child: Image.file(_image1),
//                                     )
//                                   : Container(
//                                       margin: EdgeInsets.all(10),
//                                       color: Colors.orange[50],
//                                     )),
//                           Align(
//                             alignment: Alignment.center,
//                             child: InkWell(
//                               onTap: () {
//                                 if (_image1 == null) {
//                                   getImage1();
//                                 } else {
//                                   _startUpload1();
//                                   showColoredToast();
//                                 }
//                               },
//                               child: CircleAvatar(
//                                 backgroundColor: Colors.orange[50],
//                                 radius: 25,
//                                 child: _image1 == null
//                                     ? Icon(
//                                         Icons.add,
//                                         size: 30,
//                                         color: Colors.orange[800],
//                                       )
//                                     : Icon(
//                                         Icons.file_upload,
//                                         size: 30,
//                                         color: Colors.orange[800],
//                                       ),
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomRight,
//                             child: InkWell(
//                               onTap: () {
//                                 if (_image1 != null) {
//                                   getImage1();
//                                 } else {
//                                   return null;
//                                 }
//                               },
//                               child: _image1 != null
//                                   ? CircleAvatar(
//                                       backgroundColor: Colors.orange[50],
//                                       radius: 15,
//                                       child: Icon(
//                                         Icons.clear,
//                                         color: Colors.orange[800],
//                                       ),
//                                     )
//                                   : Container(
//                                       height: 1,
//                                       width: 1,
//                                     ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: 180,
//                       height: MediaQuery.of(context).size.height,
//                       child: Stack(
//                         children: <Widget>[
//                           Align(
//                               alignment: Alignment.center,
//                               child: _image2 != null
//                                   ? Container(
//                                       margin: EdgeInsets.all(10),
//                                       color: Colors.orange[50],
//                                       child: Image.file(_image2),
//                                     )
//                                   : Container(
//                                       margin: EdgeInsets.all(10),
//                                       color: Colors.orange[50],
//                                     )),
//                           Align(
//                             alignment: Alignment.center,
//                             child: InkWell(
//                               onTap: () {
//                                 if (_image2 == null) {
//                                   getImage2();
//                                 } else {
//                                   _startUpload2();
//                                   showColoredToast();
//                                 }
//                               },
//                               child: CircleAvatar(
//                                 backgroundColor: Colors.orange[50],
//                                 radius: 25,
//                                 child: _image2 == null
//                                     ? Icon(
//                                         Icons.add,
//                                         size: 30,
//                                         color: Colors.orange[800],
//                                       )
//                                     : Icon(
//                                         Icons.file_upload,
//                                         size: 30,
//                                         color: Colors.orange[800],
//                                       ),
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomRight,
//                             child: InkWell(
//                               onTap: () {
//                                 if (_image2 != null) {
//                                   getImage2();
//                                 } else {
//                                   return null;
//                                 }
//                               },
//                               child: _image2 != null
//                                   ? CircleAvatar(
//                                       backgroundColor: Colors.orange[50],
//                                       radius: 15,
//                                       child: Icon(
//                                         Icons.clear,
//                                         color: Colors.orange[800],
//                                       ),
//                                     )
//                                   : Container(
//                                       height: 1,
//                                       width: 1,
//                                     ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: 180,
//                       height: MediaQuery.of(context).size.height,
//                       child: Stack(
//                         children: <Widget>[
//                           Align(
//                               alignment: Alignment.center,
//                               child: _image3 != null
//                                   ? Container(
//                                       margin: EdgeInsets.all(10),
//                                       color: Colors.orange[50],
//                                       child: Image.file(_image3),
//                                     )
//                                   : Container(
//                                       margin: EdgeInsets.all(10),
//                                       color: Colors.orange[50],
//                                     )),
//                           Align(
//                             alignment: Alignment.center,
//                             child: InkWell(
//                               onTap: () {
//                                 if (_image3 == null) {
//                                   getImage3();
//                                 } else {
//                                   _startUpload3();
//                                   showColoredToast();
//                                 }
//                               },
//                               child: CircleAvatar(
//                                 backgroundColor: Colors.orange[50],
//                                 radius: 25,
//                                 child: _image3 == null
//                                     ? Icon(
//                                         Icons.add,
//                                         size: 30,
//                                         color: Colors.orange[800],
//                                       )
//                                     : Icon(
//                                         Icons.file_upload,
//                                         size: 30,
//                                         color: Colors.orange[800],
//                                       ),
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomRight,
//                             child: InkWell(
//                               onTap: () {
//                                 if (_image3 != null) {
//                                   getImage3();
//                                 } else {
//                                   return null;
//                                 }
//                               },
//                               child: _image3 != null
//                                   ? CircleAvatar(
//                                       backgroundColor: Colors.orange[50],
//                                       radius: 15,
//                                       child: Icon(
//                                         Icons.clear,
//                                         color: Colors.orange[800],
//                                       ),
//                                     )
//                                   : Container(
//                                       height: 1,
//                                       width: 1,
//                                     ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: 180,
//                       height: MediaQuery.of(context).size.height,
//                       child: Stack(
//                         children: <Widget>[
//                           Align(
//                               alignment: Alignment.center,
//                               child: _image4 != null
//                                   ? Container(
//                                       margin: EdgeInsets.all(10),
//                                       color: Colors.orange[50],
//                                       child: Image.file(_image4),
//                                     )
//                                   : Container(
//                                       margin: EdgeInsets.all(10),
//                                       color: Colors.orange[50],
//                                     )),
//                           Align(
//                             alignment: Alignment.center,
//                             child: InkWell(
//                               onTap: () {
//                                 if (_image4 == null) {
//                                   getImage4();
//                                 } else {
//                                   _startUpload4();
//                                   showColoredToast();
//                                 }
//                               },
//                               child: CircleAvatar(
//                                 backgroundColor: Colors.orange[50],
//                                 radius: 25,
//                                 child: _image4 == null
//                                     ? Icon(
//                                         Icons.add,
//                                         size: 30,
//                                         color: Colors.orange[800],
//                                       )
//                                     : Icon(
//                                         Icons.file_upload,
//                                         size: 30,
//                                         color: Colors.orange[800],
//                                       ),
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomRight,
//                             child: InkWell(
//                               onTap: () {
//                                 if (_image4 != null) {
//                                   getImage4();
//                                 } else {
//                                   return null;
//                                 }
//                               },
//                               child: _image4 != null
//                                   ? CircleAvatar(
//                                       backgroundColor: Colors.orange[50],
//                                       radius: 15,
//                                       child: Icon(
//                                         Icons.clear,
//                                         color: Colors.orange[800],
//                                       ),
//                                     )
//                                   : Container(
//                                       height: 1,
//                                       width: 1,
//                                     ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: 180,
//                       height: MediaQuery.of(context).size.height,
//                       child: Stack(
//                         children: <Widget>[
//                           Align(
//                               alignment: Alignment.center,
//                               child: _image5 != null
//                                   ? Container(
//                                       margin: EdgeInsets.all(10),
//                                       color: Colors.orange[50],
//                                       child: Image.file(_image5),
//                                     )
//                                   : Container(
//                                       margin: EdgeInsets.all(10),
//                                       color: Colors.orange[50],
//                                     )),
//                           Align(
//                             alignment: Alignment.center,
//                             child: InkWell(
//                               onTap: () {
//                                 if (_image5 == null) {
//                                   getImage5();
//                                 } else {
//                                   _startUpload5();
//                                   showColoredToast();
//                                 }
//                               },
//                               child: CircleAvatar(
//                                 backgroundColor: Colors.orange[50],
//                                 radius: 25,
//                                 child: _image5 == null
//                                     ? Icon(
//                                         Icons.add,
//                                         size: 30,
//                                         color: Colors.orange[800],
//                                       )
//                                     : Icon(
//                                         Icons.file_upload,
//                                         size: 30,
//                                         color: Colors.orange[800],
//                                       ),
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomRight,
//                             child: InkWell(
//                               onTap: () {
//                                 if (_image5 != null) {
//                                   getImage5();
//                                 } else {
//                                   return null;
//                                 }
//                               },
//                               child: _image5 != null
//                                   ? CircleAvatar(
//                                       backgroundColor: Colors.orange[50],
//                                       radius: 15,
//                                       child: Icon(
//                                         Icons.clear,
//                                         color: Colors.orange[800],
//                                       ),
//                                     )
//                                   : Container(
//                                       height: 1,
//                                       width: 1,
//                                     ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: 180,
//                       height: MediaQuery.of(context).size.height,
//                       child: Stack(
//                         children: <Widget>[
//                           Align(
//                               alignment: Alignment.center,
//                               child: _image6 != null
//                                   ? Container(
//                                       margin: EdgeInsets.all(10),
//                                       color: Colors.orange[50],
//                                       child: Image.file(_image6),
//                                     )
//                                   : Container(
//                                       margin: EdgeInsets.all(10),
//                                       color: Colors.orange[50],
//                                     )),
//                           Align(
//                             alignment: Alignment.center,
//                             child: InkWell(
//                               onTap: () {
//                                 if (_image6 == null) {
//                                   getImage6();
//                                 } else {
//                                   _startUpload6();
//                                   showColoredToast();
//                                 }
//                               },
//                               child: CircleAvatar(
//                                 backgroundColor: Colors.orange[50],
//                                 radius: 30,
//                                 child: _image6 == null
//                                     ? Icon(
//                                         Icons.add,
//                                         size: 30,
//                                         color: Colors.orange[800],
//                                       )
//                                     : Icon(
//                                         Icons.file_upload,
//                                         size: 30,
//                                         color: Colors.orange[800],
//                                       ),
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomRight,
//                             child: InkWell(
//                               onTap: () {
//                                 if (_image6 != null) {
//                                   getImage6();
//                                 } else {
//                                   return null;
//                                 }
//                               },
//                               child: _image6 != null
//                                   ? CircleAvatar(
//                                       backgroundColor: Colors.orange[50],
//                                       radius: 15,
//                                       child: Icon(
//                                         Icons.clear,
//                                         color: Colors.orange[800],
//                                       ),
//                                     )
//                                   : Container(
//                                       height: 1,
//                                       width: 1,
//                                     ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),

//           // details

//           _dDeitem(),
//         ],
//       ),
//     );
//   }
// }

// Widget _dDeitem() {
//   return Container(
//     color: Colors.orange[50],
//   );
// }
