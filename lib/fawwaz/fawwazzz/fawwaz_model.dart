import 'package:google_maps_flutter/google_maps_flutter.dart';

class Coffee {
  String shopName;
  String address;
  String description;
  String thumbNail;
  LatLng locationCoords;
  int i;

  Coffee(
      {this.shopName,
      this.address,
      this.description,
      this.thumbNail,
      this.locationCoords,
      this.i});
}

final List<Coffee> coffeeShops = [
  Coffee(
    shopName: 'Fawwazs Coffee Roasters',
    address: '18 W 29th St',
    description:
        'Coffee bar chain offering house-roasted direct-trade coffee, along with brewing gear & whole beans',
    locationCoords: LatLng(40.745803, -73.988213),
    thumbNail:
        'https://i.pinimg.com/474x/87/3d/6e/873d6ead93c6387bd08a18195a5e5907.jpg',
    i: 1,
  ),
  Coffee(
    shopName: 'Fawwazs Coffee Shop',
    address: '463 7th Ave',
    description: 'All-day American comfort eats in a basic diner-style setting',
    locationCoords: LatLng(40.751908, -73.989804),
    thumbNail:
        'https://i.pinimg.com/474x/42/41/ac/4241acf72c5bef48b54aa2c2f3039029.jpg',
    i: 2,
  ),
  Coffee(
    shopName: 'Fawwazs Third Rail Coffee',
    address: '240 Sullivan St',
    description:
        'Small spot draws serious caffeine lovers with wide selection of brews & baked goods.',
    locationCoords: LatLng(40.730148, -73.999639),
    thumbNail:
        'https://i.pinimg.com/474x/7f/8f/b7/7f8fb79d349ef62e3f2ef94ce81dc3fd.jpg',
    i: 3,
  ),
  Coffee(
    shopName: 'Fawwazs Hi-Collar',
    address: '214 E 10th St',
    description:
        'Snazzy, compact Japanese cafe showcasing high-end coffee & sandwiches, plus sake & beer at night.',
    locationCoords: LatLng(43.651070, -79.347015),
    thumbNail:
        'https://i.pinimg.com/474x/48/17/1f/48171f9075f35690cbeb4e17aa545294.jpg',
    i: 4,
  ),
  Coffee(
      shopName: 'Fawwazs Everyman Espresso',
      address: '301 W Broadway',
      description:
          'Compact coffee & espresso bar turning out drinks made from direct-trade beans in a low-key setting.',
      locationCoords: LatLng(55.751244, 37.618423),
      thumbNail:
          'https://i.pinimg.com/474x/f6/25/e6/f625e6327338e18e14458b858729e18e.jpg',
      i: 5),
  Coffee(
    shopName: 'Fawwazs Everyman Espresso',
    address: '301 W Broadway',
    description:
        'Compact coffee & espresso bar turning out drinks made from direct-trade beans in a low-key setting.',
    locationCoords: LatLng(40.721622, -74.004308),
    thumbNail:
        'https://i.pinimg.com/474x/e1/81/ef/e181ef00efbc49e6cfb4e5a9168223d4.jpg',
    i: 6,
  ),
  Coffee(
    shopName: 'Fawwazs Everyman Espresso',
    address: '301 W Broadway',
    description:
        'Compact coffee & espresso bar turning out drinks made from direct-trade beans in a low-key setting.',
    locationCoords: LatLng(29.378586, 47.990341),
    thumbNail:
        'https://i.pinimg.com/474x/7f/20/41/7f2041fd16dfb855ea380f8e984bc8b1.jpg',
    i: 7,
  ),
  Coffee(
    shopName: 'Fawwazs Everyman Espresso',
    address: '301 W Broadway',
    description:
        'Compact coffee & espresso bar turning out drinks made from direct-trade beans in a low-key setting.',
    locationCoords: LatLng(28.644800, 77.216721),
    thumbNail:
        ' https://i.pinimg.com/474x/76/dd/48/76dd487beafc4591932760c3e19dbf5f.jpg',
    i: 8,
  ),
  Coffee(
    shopName: 'Fawwazs Everyman Espresso',
    address: '301 W Broadway',
    description:
        'Compact coffee & espresso bar turning out drinks made from direct-trade beans in a low-key setting.',
    locationCoords: LatLng(37.034946, -76.360123),
    thumbNail:
        'https://i.pinimg.com/474x/11/62/52/116252f4d94997db94cfda4c0f5ac719.jpg',
    i: 9,
  ),
  Coffee(
    shopName: 'Fawwazs Everyman Espresso',
    address: '301 W Broadway',
    description:
        'Compact coffee & espresso bar turning out drinks made from direct-trade beans in a low-key setting.',
    locationCoords: LatLng(25.276987, 55.296249),
    thumbNail:
        'https://i.pinimg.com/474x/fb/79/01/fb79010279530b2c1e749db813113d1b.jpg',
    i: 10,
  ),
];
