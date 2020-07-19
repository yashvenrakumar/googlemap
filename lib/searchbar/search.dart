import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  final loma = [
    "hotels",
    "rooms",
    "maket",
    "restorant",
    "fawwaz",
    "india",
    "kuwait",
    "bar",
    "factory",
    "office",
    "college",
    "school",
    "admimistration building",
    "park",
    "icebar",
  ];

  final recent = ["hotels", "restorant", "office", "icebar", "fawwaz"];
  @override
  List<Widget> buildActions(BuildContext context) {
    //action for app bar

    return [
      IconButton(
          icon: Icon(
            Icons.location_on,
            color: Colors.orange[800],
            size: 30,
          ),
          onPressed: () {})
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            color: Colors.orange[800],
            icon: AnimatedIcons.menu_arrow,
            progress: transitionAnimation),
        onPressed: () {
          Navigator.of(context).pop();
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    //show some result when u search sometings

    return null;
    // return query == "m" ||
    //         query == "ma" ||
    //         query == "man" ||
    //         query == "mang" ||
    //         query == "mango"
    //     ? Container(
    //         color: Colors.orange,
    //       )
    //     : query == "y" ||
    //             query == "ya" ||
    //             query == "yas" ||
    //             query == "yash" ||
    //             query == "yashv" ||
    //             query == "yashve" ||
    //             query == "yashven" ||
    //             query == "yashvend" ||
    //             query == "yashvendr" ||
    //             query == "yashvendra"
    //         ? Container()
    //         : Container(
    //             color: Colors.yellowAccent,
    //           );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggetionlist = query.isEmpty
        ? recent
        : loma.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
        itemCount: suggetionlist.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              showResults(context);
            },
            leading: Icon(Icons.location_city),
            title: RichText(
              text: TextSpan(
                  text: suggetionlist[index].substring(
                    0,
                    query.length,
                  ),
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: suggetionlist[index].substring(query.length),
                        style: TextStyle(color: Colors.black45))
                  ]),
            ),
          );
        });
  }
}

// import 'package:flutter/material.dart';

// class DataSearch extends SearchDelegate<String> {
//   final loma = [
//     "cap",
//     "pent",
//     "shirts for man",
//     "jenas for mens",
//     "kids",
//     "mango",
//     "banana",
//     "yashendra",
//     "kumar",
//     "brajesh",
//     "verma",
//     "yashoo",
//     "yash",
//     "graps",
//     "potato",
//   ];

//   final recent = ["jense", "t-shiirts", "cap", "electronics"];
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     //action for app bar

//     return [
//       IconButton(
//           icon: Icon(
//             Icons.add_shopping_cart,
//             color: Colors.orange[800],
//             size: 30,
//           ),
//           onPressed: () {
//             //Navigator.of(context).push( MaterialPageRoute(builder:  (context)=>Offer()));
//           })
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//         icon: AnimatedIcon(
//             color: Colors.orange[800],
//             icon: AnimatedIcons.menu_arrow,
//             progress: transitionAnimation),
//         onPressed: () {
//           Navigator.of(context).pop();
//         });
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     //show some result when u search sometings

//     return null;
//     // return query == "m" ||
//     //         query == "ma" ||
//     //         query == "man" ||
//     //         query == "mang" ||
//     //         query == "mango"
//     //     ? Container(
//     //         color: Colors.orange,
//     //       )
//     //     : query == "y" ||
//     //             query == "ya" ||
//     //             query == "yas" ||
//     //             query == "yash" ||
//     //             query == "yashv" ||
//     //             query == "yashve" ||
//     //             query == "yashven" ||
//     //             query == "yashvend" ||
//     //             query == "yashvendr" ||
//     //             query == "yashvendra"
//     //         ? Container()
//     //         : Container(
//     //             color: Colors.yellowAccent,
//     //           );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final suggetionlist = query.isEmpty
//         ? recent
//         : loma.where((p) => p.startsWith(query)).toList();

//     return ListView.builder(
//         itemCount: suggetionlist.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             onTap: () {
//               showResults(context);
//             },
//             leading: Icon(Icons.location_city),
//             title: RichText(
//               text: TextSpan(
//                   text: suggetionlist[index].substring(
//                     0,
//                     query.length,
//                   ),
//                   style: TextStyle(
//                       color: Colors.black, fontWeight: FontWeight.bold),
//                   children: [
//                     TextSpan(
//                         text: suggetionlist[index].substring(query.length),
//                         style: TextStyle(color: Colors.black45))
//                   ]),
//             ),
//           );
//         });
//   }
// }
