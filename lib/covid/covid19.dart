import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:koshish/covid/model.dart';
import 'package:koshish/covid/detailpatient.dart';
import 'package:advanced_splashscreen/advanced_splashscreen.dart';

class Yashvendra extends StatelessWidget {
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
        // appIcon: "assets/mlogo.jpg",
        appTitle: " COVID 2019",
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

class Covid extends StatefulWidget {
  @override
  _CovidState createState() => _CovidState();
}

class _CovidState extends State<Covid> {
  GoogleMapController _controller;

  List<Marker> allMarkers = [];

  PageController _pageController;

  int prevPage;

  @override
  void initState() {
    super.initState();
    covidModel.forEach((element) {
      int yaa = element.i;

      allMarkers.add(Marker(
          markerId: MarkerId(element.name),
          draggable: false,
          onTap: () {
            _pageController.jumpToPage(yaa - 1);
          },
          infoWindow: InfoWindow(
              onTap: () {
                _pageController.jumpToPage(yaa - 1);
              },
              title: element.name,
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
    String img = covidModel[index].thumbNail;
    String add = covidModel[index].address;
    String des = covidModel[index].description;
    var cood = covidModel[index].locationCoords;
    String name = covidModel[index].name;
    int age = covidModel[index].age;
    String pin = covidModel[index].pin;
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
              height: Curves.easeInOut.transform(value) * 150.0,
              width: Curves.easeInOut.transform(value) * 400.0,
              child: widget,
            ),
          );
        },
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    Detail(img, add, des, cood, name, age, pin)));
          },
          child: Stack(children: [
            Center(
                child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 20.0,
                    ),
                    // height: 150.0,
                    // width: 300.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            offset: Offset(0.0, 4.0),
                            blurRadius: 10.0,
                          ),
                        ]),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),
                        child: Row(children: [
                          Container(
                              height: 110.0,
                              width: 120.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          covidModel[index].thumbNail),
                                      fit: BoxFit.cover))),
                          SizedBox(width: 5.0),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  covidModel[index].name,
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " Age : ${covidModel[index].age.toString()} year ",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ])
                        ]))))
          ]),
        ));
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
                itemCount: covidModel.length,
                itemBuilder: (BuildContext context, int index) {
                  // String img = coffeeShops[index].thumbNail;
                  return _coffeeShopList(index);
                },
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
        target: covidModel[_pageController.page.toInt()].locationCoords,
        zoom: 14.0,
        bearing: 45.0,
        tilt: 45.0)));
  }
}
