import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:koshish/fawwaz/fawwazzz/details.dart';
import 'package:koshish/fawwaz/fawwazzz/fawwaz_model.dart';
import 'package:koshish/fawwaz/fawwazzz/fawwazontap.dart';

import 'package:koshish/searchbar/search.dart';

class Fawwazfavo extends StatefulWidget {
  @override
  _FawwazfavoState createState() => _FawwazfavoState();
}

class _FawwazfavoState extends State<Fawwazfavo> {
  GoogleMapController _controller;

  List<Marker> allMarkers = [];

  PageController _pageController;

  int prevPage;

  @override
  void initState() {
    super.initState();
    coffeeShops.forEach((element) {
      String img = element.thumbNail;
      String add = element.address;
      String des = element.description;
      var cood = element.locationCoords;
      String shop = element.shopName;

      allMarkers.add(Marker(
          markerId: MarkerId(element.shopName),
          draggable: false,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Fawontap(img, add, des, cood, shop)));
          },
          infoWindow: InfoWindow(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Fawontap(img, add, des, cood, shop)));
              },
              title: element.shopName,
              snippet: element.address),
          position: element.locationCoords));
    });
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8)
      ..addListener(_onScroll);
  }

  void _onScroll() {
    if (_pageController.page.toInt() != prevPage) {
      prevPage = _pageController.page.toInt();
      moveCamera();
    }
  }

  _coffeeShopList(index) {
    String img = coffeeShops[index].thumbNail;
    String add = coffeeShops[index].address;
    String des = coffeeShops[index].description;
    var cood = coffeeShops[index].locationCoords;
    String shop = coffeeShops[index].shopName;
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 125.0,
            width: Curves.easeInOut.transform(value) * 350.0,
            child: widget,
          ),
        );
      },
      child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Detail(img, add, des, cood, shop)));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.orange,
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),

              child: Image.network(
                coffeeShops[index].thumbNail,
                fit: BoxFit.fill,
              ),

              // child: Container(
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(10.0),
              //         color: Colors.white),
              //     child: Row(children: [
              //       Container(
              //           height: 200.0,
              //           width: MediaQuery.of(context).size.width - 10,
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.only(
              //                   bottomLeft: Radius.circular(10.0),
              //                   topLeft: Radius.circular(10.0)),
              //               image: DecorationImage(
              //                   image: NetworkImage(
              //                       coffeeShops[index].thumbNail),
              //                   fit: BoxFit.cover))),
              //       SizedBox(width: 5.0),
              // Column(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         coffeeShops[index].shopName,
              //         style: TextStyle(
              //             fontSize: 12.5,
              //             fontWeight: FontWeight.bold),
              //       ),
              //       Text(
              //         coffeeShops[index].address,
              //         style: TextStyle(
              //             fontSize: 12.0,
              //             fontWeight: FontWeight.w600),
              //       ),
              //       Container(
              //         width: 170.0,
              //         child: Text(
              //           coffeeShops[index].description,
              //           style: TextStyle(
              //               fontSize: 11.0,
              //               fontWeight: FontWeight.w300),
              //         ),
              //       )
              //     ])
              //  ]))
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: MediaQuery.of(context).size.width,
            child: GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: LatLng(40.7128, -74.0060), zoom: 6.0),
              markers: Set.from(allMarkers),
              onMapCreated: mapCreated,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.transparent,
              height: 150.0,
              margin: EdgeInsets.fromLTRB(10, 0, 10, 2),
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                controller: _pageController,
                itemCount: coffeeShops.length,
                itemBuilder: (BuildContext context, int index) {
                  // String img = coffeeShops[index].thumbNail;
                  return _coffeeShopList(index);
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 90, 10, 0),
              height: 60,
              color: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.white,
                  child: InkWell(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: IconButton(
                              icon: Icon(
                                Icons.search,
                                color: Colors.orange[800],
                                size: 30,
                              ),
                              onPressed: () {
                                showSearch(
                                    context: context, delegate: DataSearch());
                              }),
                        ),
                        Expanded(
                            flex: 15,
                            child: InkWell(
                              onTap: () {
                                showSearch(
                                    context: context, delegate: DataSearch());
                              },
                              child: Center(
                                child: Text("search your location.."),
                              ),
                            )),
                        Expanded(
                            flex: 3,
                            child: IconButton(
                                icon: Icon(
                                  Icons.location_on,
                                  color: Colors.orange[800],
                                  size: 30,
                                ),
                                onPressed: null))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void mapCreated(controller) {
    setState(() {
      _controller = controller;
    });
  }

  moveCamera() {
    _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: coffeeShops[_pageController.page.toInt()].locationCoords,
        zoom: 14.0,
        bearing: 45.0,
        tilt: 45.0)));
  }

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
