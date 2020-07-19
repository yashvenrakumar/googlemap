import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:koshish/fawwaz/fawwazzz/fawwaz_favo.dart';

// ignore: must_be_immutable
class Detail extends StatefulWidget {
  String img;
  String add;
  String des;
  var cood;
  String shop;
  Detail(this.img, this.add, this.des, this.cood, this.shop);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  List<Marker> allMarkers = [];

  @override
  void initState() {
    super.initState();

    allMarkers.add(Marker(
        markerId: MarkerId(widget.shop),
        draggable: false,
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Fawwazfavo()));
        },
        infoWindow: InfoWindow(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Fawwazfavo()));
            },
            title: widget.shop,
            snippet: widget.add),
        position: widget.cood));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          widget.shop,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(
                initialCameraPosition:
                    CameraPosition(target: widget.cood, zoom: 17.0),
                markers: Set.from(allMarkers),
                // onMapCreated: mapCreated,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                color: Colors.orange[100],
                height: 200,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                child: Image.network(
                  widget.img,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              color: Colors.transparent,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
              height: 80,
              width: MediaQuery.of(context).size.width - 20,
              child: Text(widget.des,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.white70)),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.transparent,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
              height: 130,
              width: MediaQuery.of(context).size.width - 20,
              child: Text(
                  ' mr fawwaz do ant changes like image , description, registration form  anythngs according to you and your developer   ...........address is  ${widget.add}',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.white70)),
            ),
          ),
        ],
      ),
    );
  }

  // moveCamera() {
  //   _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
  //       target: coffeeShops[_pageController.page.toInt()].locationCoords,
  //       zoom: 14.0,
  //       bearing: 45.0,
  //       tilt: 45.0)));
  // }

  // Widget _buildContainer() {
  //   return Align(
  //     alignment: Alignment.topLeft,
  //     child: Container(
  //       color: Colors.transparent,
  //       height: 100.0,
  //       margin: EdgeInsets.fromLTRB(10, 0, 10, 2),
  //       width: 100,
  //       child: Container(
  //         height: 100,
  //         width: 100,
  //         color: Colors.orange,
  //       ),
  //       // child: PageView.builder(
  //       //   controller: _pageController,
  //       //   itemCount: coffeeShops.length,
  //       //   itemBuilder: (BuildContext context, int index) {
  //       //     return _coffeeShopList(index);
  //       //   },
  //       // ),
  //     ),
  //   );
  // }
}
