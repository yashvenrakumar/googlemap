import 'package:flutter/material.dart';
import 'package:koshish/texting/cloudfire/firedata.dart';

import 'searchbar/search.dart';
import 'shopkeeper.dart/shop.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.orange[800]),
        backgroundColor: Colors.orange[50],
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.textsms,
                color: Colors.orange[800],
                size: 25,
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FirestoreCRUD()));
              }),
          IconButton(
              icon: Icon(
                Icons.shop,
                color: Colors.orange[800],
                size: 25,
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Shopp()));
              }),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.orange[800],
                size: 25,
              ),
              onPressed: null),
        ],
        title: Text(
          " Loma.in",
          style: TextStyle(color: Colors.orange[800], fontSize: 20),
        ),
        elevation: 0,
        bottom: PreferredSize(
            child: Container(
              height: 50,
              color: Colors.orange[100],
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
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
                                child:
                                    Text("search for product, Brand and more "),
                              ),
                            )),
                        Expanded(
                            flex: 3,
                            child: IconButton(
                                icon: Icon(
                                  Icons.mic,
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
            preferredSize: Size.fromHeight(40.0)),
      ),
      body: Container(),
      drawer: Drawer(),
    );
  }
}
