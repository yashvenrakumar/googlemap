import 'package:google_maps_flutter/google_maps_flutter.dart';

class Covidmodel {
  String name;
  String address;
  String description;
  String thumbNail;
  LatLng locationCoords;
  int i;
  int age;
  String pin;
  Covidmodel(
      {this.name,
      this.address,
      this.description,
      this.thumbNail,
      this.locationCoords,
      this.i,
      this.age,
      this.pin});
}

final List<Covidmodel> covidModel = [
  Covidmodel(
    name: 'yashvendra k',
    address: 'mahoba thathokhana',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(40.745803, -73.988213),
    thumbNail:
        'https://i.pinimg.com/474x/03/94/40/0394400a1a03b0c6eee9119305a9d8de.jpg',
    i: 1,
    age: 20,
    pin: '210423',
  ),
  Covidmodel(
    name: ' amit kumar',
    address: 'recabn',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(40.751908, -73.989804),
    thumbNail:
        'https://i.pinimg.com/474x/53/50/85/535085121f8991782e15b895b7724e77.jpg',
    i: 2,
    age: 22,
    pin: '210457',
  ),
  Covidmodel(
    name: 'neha kumarii',
    address: ' recabn',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(40.730148, -73.999639),
    thumbNail:
        'https://i.pinimg.com/474x/6c/a2/f6/6ca2f67f3439a47fae733d3f7427624a.jpg',
    i: 3,
    age: 13,
    pin: '2104285',
  ),
  Covidmodel(
    name: ' shivam paerl',
    address: ' urai mahoab',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(43.651070, -79.347015),
    thumbNail:
        'https://i.pinimg.com/474x/a8/54/6c/a8546cae3deb2e765c5e3f687cbe0e85.jpg',
    i: 4,
    age: 20,
    pin: '210437',
  ),
  Covidmodel(
    name: 'vishwsh kumar',
    address: 'mahoba',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond.  ',
    locationCoords: LatLng(55.751244, 37.618423),
    thumbNail:
        'https://i.pinimg.com/474x/39/d9/bb/39d9bb0b93097f6f4c09447d133110d7.jpg',
    i: 5,
    age: 29,
    pin: '210446',
  ),
  Covidmodel(
    name: 'shivam chaudhary',
    address: ' basti',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(40.721622, -74.004308),
    thumbNail:
        'https://i.pinimg.com/474x/80/b2/a1/80b2a103793c7380cc7194c5674808ba.jpg',
    i: 6,
    age: 27,
    pin: '210444',
  ),
  Covidmodel(
    name: ' kaushal kummar joshi',
    address: ' chandauli vanaras',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(29.378586, 47.990341),
    thumbNail:
        'https://i.pinimg.com/474x/f6/fd/a3/f6fda37ed71bd8d75d4398d1bc5c99bb.jpg',
    i: 7,
    age: 15,
    pin: '210423',
  ),
  Covidmodel(
    name: ' shruti gautam',
    address: ' allahabad',
    description:
        ' During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(28.644800, 77.216721),
    thumbNail:
        'https://i.pinimg.com/474x/a2/b8/a3/a2b8a37df5d80b3d2431351230c2bd93.jpg',
    i: 8,
    age: 12,
    pin: '210422',
  ),
  Covidmodel(
    name: 'shadhana prajapati',
    address: ' charkhari',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(37.034946, -76.360123),
    thumbNail:
        'https://i.pinimg.com/474x/03/5e/6b/035e6b5788a28e3181fbf753b2ce085f.jpg',
    i: 9,
    age: 32,
    pin: '210421',
  ),
  Covidmodel(
    name: 'vishesh ku..',
    address: ' mahoba vale bhaiya',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(25.292509, 79.872665),
    thumbNail:
        'https://i.pinimg.com/474x/62/97/27/62972748503f0636800d306b8ee55334.jpg',
    i: 10,
    age: 20,
    pin: '210426',
  ),
  Covidmodel(
    name: 'ritesh kumar',
    address: ' kulpahar vale bhaiya',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(25.920074, 80.809998),
    thumbNail:
        'https://i.pinimg.com/474x/a7/f7/29/a7f729e8563937fd0e277d9c30019bbd.jpg',
    i: 10,
    age: 23,
    pin: '210426',
  ),
  Covidmodel(
    name: 'yashoo bhai',
    address: ' churari vale bhaiya',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(25.920074, 80.809998),
    thumbNail:
        'https://i.pinimg.com/474x/dc/ce/69/dcce69012523e8a15687f9f549a875d4.jpg',
    i: 11,
    age: 23,
    pin: '210426',
  ),
  Covidmodel(
    name: 'shaurabh bhai',
    address: ' banda vale bhaiya',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(25.492249, 80.336151),
    thumbNail:
        'https://i.pinimg.com/474x/58/22/d9/5822d9ae06604404cc2422bfacefafd1.jpg',
    i: 12,
    age: 21,
    pin: '210425',
  ),
  Covidmodel(
    name: 'kaushal bhai',
    address: ' chandauli vale \n bhaiya',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(25.473034, 81.878357),
    thumbNail:
        'https://i.pinimg.com/474x/cc/41/48/cc414840e5ce1425b4c851b2b9b7320a.jpg',
    i: 13,
    age: 21,
    pin: '210425',
  ),
  Covidmodel(
    name: 'rajan bhai',
    address: ' bc vale bhaiya',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(31.690783, 76.517715),
    thumbNail:
        'https://i.pinimg.com/474x/74/73/e0/7473e071fe411558c3dd137df2a21be8.jpg',
    i: 14,
    age: 21,
    pin: '210425',
  ),
  Covidmodel(
    name: ' addresses of \n condidate here',
    address: ' abc vale bhaiya',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(29.967102, 74.700134),
    thumbNail:
        'https://i.pinimg.com/474x/78/8d/bd/788dbd12de12ca0f0fd3acfa5e7957f3.jpg',
    i: 15,
    age: 21,
    pin: '210425',
  ),
  Covidmodel(
    name: ' addresses of \n condidate here',
    address: ' abc vale bhaiya',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(27.159101, 78.395760),
    thumbNail:
        'https://i.pinimg.com/474x/50/4c/4c/504c4c18e6269b5bd1b0c3bc952763dc.jpg',
    i: 16,
    age: 21,
    pin: '210425',
  ),
  Covidmodel(
    name: ' addresses of \n condidate here',
    address: ' abc vale bhaiya',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(26.218287, 78.182831),
    thumbNail:
        'https://i.pinimg.com/474x/4f/ad/ba/4fadba97a7939fe807e2a636f79390e9.jpg',
    i: 17,
    age: 21,
    pin: '210425',
  ),
  Covidmodel(
    name: ' addresses of \n condidate here',
    address: ' abc vale bhaiya',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(25.436298, 78.567352),
    thumbNail:
        'https://i.pinimg.com/474x/6e/b8/5f/6eb85f9d8d1f8b90e6bc9e90d781c4d8.jpg',
    i: 18,
    age: 21,
    pin: '210425',
  ),
  Covidmodel(
    name: ' addresses of \n condidate here',
    address: ' abc vale bhaiya',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(24.916355, 79.581184),
    thumbNail:
        'https://i.pinimg.com/474x/32/a8/60/32a860996cd3a7ec41e13620ad82129f.jpg',
    i: 19,
    age: 21,
    pin: '210428',
  ),
  Covidmodel(
    name: ' addresses of \n condidate here',
    address: ' abc vale bhaiya',
    description:
        'During health emergencies like the COVID-19 pandemic, one of WHO’s most vital roles is to gather data and research from around the world, evaluate it, and then advise countries on how to respond. ',
    locationCoords: LatLng(24.916355, 79.581184),
    thumbNail:
        'https://i.pinimg.com/474x/69/09/83/690983e9bf0209e50a096f8af2a2dc2b.jpg',
    i: 20,
    age: 21,
    pin: '210428',
  ),
];
