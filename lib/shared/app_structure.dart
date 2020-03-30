import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/services/services.dart';
import 'package:test1/screens/screens.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

PreferredSizeWidget appBarPage(BuildContext context, String id) {
  return AppBar(
    title: Text(id),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.favorite),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.more_vert),
        onPressed: () {
          Navigator.popUntil(context, ModalRoute.withName('/'));
        },
      ),
    ],
  );
}

Widget fab(BuildContext context) {
  return FloatingActionButton(
    child: Icon(Icons.plus_one),
    onPressed: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => patientPage()));
    },
  );
}

Widget appDrawer() {
  return Drawer(
    child: ListView(
      children: <Widget>[
        DrawerHeader(
          child: Text('AI Health'),
        ),
        Text('text'),
        Text('text'),
        Text('text'),
        Text('text'),
        Text('text'),
      ],
    ),
  );
}

Widget patientCard(BuildContext context) {
    var _user = Provider.of<User>(context);
    return Center(
      child: Container(
        color: Colors.white,
        height: 110.0,
        child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("images/1.jpg"),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('${_user.name}',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                    Text('${_user.email}',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ))
                  ],
                ),
              ],
            ),
        ),
    );
  }
  
