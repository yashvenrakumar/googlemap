import 'dart:async';

import 'package:fluster/fluster.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'map_helper.dart';
import 'map_marker.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Completer<GoogleMapController> _mapController = Completer();

  /// Set of displayed markers and cluster markers on the map
  final Set<Marker> _markers = Set();

  /// Minimum zoom at which the markers will cluster
  final int _minClusterZoom = 0;

  /// Maximum zoom at which the markers will cluster
  final int _maxClusterZoom = 19;

  /// [Fluster] instance used to manage the clusters
  Fluster<MapMarker> _clusterManager;

  /// Current map zoom. Initial zoom will be 15, street level
  double _currentZoom = 15;

  /// Map loading flag
  bool _isMapLoading = true;

  /// Markers loading flag
  bool _areMarkersLoading = true;

  /// Url image used on normal markers
  final String _markerImageUrl =
      'https://img.icons8.com/office/80/000000/marker.png';

  /// Color of the cluster circle
  final Color _clusterColor = Colors.blue;

  /// Color of the cluster text
  final Color _clusterTextColor = Colors.white;

  /// Example marker coordinates
  final List<LatLng> _markerLocations = [
    LatLng(41.147125, -8.611249),
    LatLng(41.145599, -8.610691),
    LatLng(41.145645, -8.614761),
    LatLng(41.146775, -8.614913),
    LatLng(41.146982, -8.615682),
    LatLng(41.140558, -8.611530),
    LatLng(41.138393, -8.608642),
    LatLng(41.137860, -8.609211),
    LatLng(41.138344, -8.611236),
    LatLng(41.139813, -8.609381),
  ];

  /// Called when the Google Map widget is created. Updates the map loading state
  /// and inits the markers.
  void _onMapCreated(GoogleMapController controller) {
    _mapController.complete(controller);

    setState(() {
      _isMapLoading = false;
    });

    _initMarkers();
  }

  void _initMarkers() async {
    final List<MapMarker> markers = [];

    for (LatLng markerLocation in _markerLocations) {
      final BitmapDescriptor markerImage =
          await MapHelper.getMarkerImageFromUrl(_markerImageUrl);

      markers.add(
        MapMarker(
          id: _markerLocations.indexOf(markerLocation).toString(),
          position: markerLocation,
          icon: markerImage,
        ),
      );
    }

    _clusterManager = await MapHelper.initClusterManager(
      markers,
      _minClusterZoom,
      _maxClusterZoom,
    );

    await _updateMarkers();
  }

  Future<void> _updateMarkers([double updatedZoom]) async {
    if (_clusterManager == null || updatedZoom == _currentZoom) return;

    if (updatedZoom != null) {
      _currentZoom = updatedZoom;
    }

    setState(() {
      _areMarkersLoading = true;
    });

    final updatedMarkers = await MapHelper.getClusterMarkers(
      _clusterManager,
      _currentZoom,
      _clusterColor,
      _clusterTextColor,
      80,
    );

    _markers
      ..clear()
      ..addAll(updatedMarkers);

    setState(() {
      _areMarkersLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Fawawaz Clusters ',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: <Widget>[
          // Google Map widget
          Opacity(
            opacity: _isMapLoading ? 0 : 1,
            child: GoogleMap(
              mapToolbarEnabled: false,
              initialCameraPosition: CameraPosition(
                target: LatLng(41.143029, -8.611274),
                zoom: _currentZoom,
              ),
              markers: _markers,
              onMapCreated: (controller) => _onMapCreated(controller),
              onCameraMove: (position) => _updateMarkers(position.zoom),
            ),
          ),

          // Map loading indicator
          Opacity(
            opacity: _isMapLoading ? 1 : 0,
            child: Center(child: CircularProgressIndicator()),
          ),

          // Map markers loading indicator
          if (_areMarkersLoading)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Card(
                  elevation: 2,
                  color: Colors.grey.withOpacity(0.9),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      'Loading',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'dart:ui';

// class MapSample extends StatefulWidget {
//   @override
//   State<MapSample> createState() => MapSampleState();
// }

// class MapSampleState extends State<MapSample> {
//   ClusterManager _manager;

//   Completer<GoogleMapController> _controller = Completer();

//   Set<Marker> markers = Set();

//   final CameraPosition _parisCameraPosition =
//       CameraPosition(target: LatLng(48.856613, 2.352222), zoom: 1.0);

//   List<ClusterItem<Place>> items = [
//     for (int i = 0; i < 10; i++)
//       ClusterItem(LatLng(48.848200 + i * 0.001, 2.319124 + i * 0.001),
//           item: Place(name: 'Place $i')),
//     for (int i = 0; i < 10; i++)
//       ClusterItem(LatLng(48.858265 - i * 0.001, 2.350107 + i * 0.001),
//           item: Place(name: 'Restaurant $i', isClosed: i % 2 == 0)),
//     for (int i = 0; i < 10; i++)
//       ClusterItem(LatLng(48.858265 + i * 0.01, 2.350107 - i * 0.01),
//           item: Place(name: 'Bar $i')),
//     for (int i = 0; i < 10; i++)
//       ClusterItem(LatLng(48.858265 - i * 0.1, 2.350107 - i * 0.01),
//           item: Place(name: 'Hotel $i')),
//     for (int i = 0; i < 10; i++)
//       ClusterItem(LatLng(48.858265 + i * 0.1, 2.350107 + i * 0.1)),
//     for (int i = 0; i < 10; i++)
//       ClusterItem(LatLng(48.858265 + i * 1, 2.350107 + i * 1)),
//   ];

//   @override
//   void initState() {
//     _manager = _initClusterManager();
//     super.initState();
//   }

//   ClusterManager _initClusterManager() {
//     return ClusterManager<Place>(items, _updateMarkers,
//         markerBuilder: _markerBuilder, initialZoom: _parisCameraPosition.zoom);
//   }

//   void _updateMarkers(Set<Marker> markers) {
//     print('Updated ${markers.length} markers');
//     setState(() {
//       this.markers = markers;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.black),
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         title: Text(
//           "fawwaz map clustering",
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       body: GoogleMap(
//           mapType: MapType.normal,
//           initialCameraPosition: _parisCameraPosition,
//           markers: markers,
//           onMapCreated: (GoogleMapController controller) {
//             _controller.complete(controller);
//             _manager.setMapController(controller);
//           },
//           onCameraMove: _manager.onCameraMove,
//           onCameraIdle: _manager.updateMap),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _manager.setItems(<ClusterItem<Place>>[
//             for (int i = 0; i < 30; i++)
//               ClusterItem<Place>(LatLng(48.858265 + i * 0.01, 2.350107),
//                   item: Place(name: 'New Place ${DateTime.now()}'))
//           ]);
//         },
//         child: Icon(Icons.update),
//       ),
//     );
//   }

//   Future<Marker> Function(Cluster<Place>) get _markerBuilder =>
//       (cluster) async {
//         return Marker(
//           markerId: MarkerId(cluster.getId()),
//           position: cluster.location,
//           onTap: () {
//             print('---- $cluster');
//             cluster.items.forEach((p) => print(p));
//           },
//           icon: await _getMarkerBitmap(cluster.isMultiple ? 125 : 75,
//               text: cluster.isMultiple
//                   ? cluster.count.toString()
//                   : Icons.location_on),
//         );
//       };

//   Future<BitmapDescriptor> _getMarkerBitmap(int size, {String text}) async {
//     assert(size != null);

//     final PictureRecorder pictureRecorder = PictureRecorder();
//     final Canvas canvas = Canvas(pictureRecorder);
//     final Paint paint1 = Paint()..color = Colors.red;
//     final Paint paint2 = Paint()..color = Colors.white;

//     canvas.drawCircle(Offset(size / 2, size / 2), size / 2.0, paint1);
//     canvas.drawCircle(Offset(size / 2, size / 2), size / 2.2, paint2);
//     canvas.drawCircle(Offset(size / 2, size / 2), size / 2.8, paint1);

//     if (text != null) {
//       TextPainter painter = TextPainter(textDirection: TextDirection.ltr);
//       painter.text = TextSpan(
//         text: text,
//         style: TextStyle(
//             fontSize: size / 3,
//             color: Colors.white,
//             fontWeight: FontWeight.normal),
//       );
//       painter.layout();
//       painter.paint(
//         canvas,
//         Offset(size / 2 - painter.width / 2, size / 2 - painter.height / 2),
//       );
//     }

//     final img = await pictureRecorder.endRecording().toImage(size, size);
//     final data = await img.toByteData(format: ImageByteFormat.png);

//     return BitmapDescriptor.fromBytes(data.buffer.asUint8List());
//   }
// }

// class Place {
//   final String name;
//   final bool isClosed;

//   const Place({this.name, this.isClosed = false});

//   @override
//   String toString() {
//     return 'Place $name (closed : $isClosed)';
//   }
// }
