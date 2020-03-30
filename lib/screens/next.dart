import 'package:flutter/material.dart';
import 'patient.dart';
import 'package:test1/shared/app_structure.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class nextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      */
      appBar: appBarPage(context, 'AI Health'),
      body: _buildBody(context),
    );
  }
Widget _buildBody(BuildContext context){
  return Column(
    children: <Widget> [
      _upcomingEventsCard(),
      _cardRow(context),
      _cardRow(context),
      _clickbutton(context),
      
    ]
  );
}

Widget _cardRow(BuildContext context) {
    return Container(
      //alignment: Alignment.topLeft,
      color: Colors.lightGreen,
      //margin: EdgeInsets.only(top: 12.0, left: 36.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _card(context),
          _card(context),
        ],
      ),
    );
  }

Widget _card(BuildContext context){
  var card = new SizedBox(
      height: 210.0,  
      width: 180,
      child: new Card(
        elevation: 8.0, 
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))), 
        child: new Column( 
          children: [
            new ListTile(
              title: new Text('Title',
                  style: new TextStyle(fontWeight: FontWeight.w500)),
              subtitle: new Text('Sub Title'),
              leading: new Icon(
                Icons.headset,
                color: Colors.blue[500],
              ),
            ),
            new Divider(),
            new ListTile(
              title: new Text('one',
                  style: new TextStyle(fontWeight: FontWeight.w500)),
              leading: new Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            new ListTile(
              title: new Text('two'),
              leading: new Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );
  return card;
}

Widget _upcomingEventsCard() {
    return Expanded(
      child: Card(
        elevation: 8.0,
        margin: EdgeInsets.all(10.0),
        //color: Colors.red,
        child: ListView.separated(
          itemCount: 3,
          padding: EdgeInsets.all(8.0),
          itemBuilder: (BuildContext context, int index) {
            return index == 0 ? _firstRow() : _otherRows();
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: Colors.black45,
            );
          },
        ),
        //(children: <Widget>[Text('text'),Text('text'),Text('text'),],),
      ),
    );
  }

  Widget _firstRow() {
    return Row(
      children: <Widget>[
        Icon(
          Icons.event,
          size: 24.0,
          color: Colors.black45,
        ),
        SizedBox(
          width: 8.0,
        ),
        Text(
          'UPCOMING EVENTS',
          style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget _otherRows() {
    return Row(
      children: <Widget>[
        Icon(
          Icons.event,
          size: 64.0,
          color: Colors.black45,
        ),
        SizedBox(
          width: 8.0,
        ),
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Registration Open', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Social Event', style: TextStyle(color: Colors.black45)),
                Text('12:00 PM - 5:00 PM Mon, Apr 29', style: TextStyle(color: Colors.black45)),
                Text('Great Room Foyer', style: TextStyle(color: Colors.blue[900],decoration: TextDecoration.underline)),
              ],
            )
        ),
        Icon(
          Icons.more_vert,
          size: 24.0,
          color: Colors.black45,
        ),
      ],
    );
  }

  /*
  Widget _clickbutton(BuildContext context){
    return Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Click to go back!'),
        ),
      );
  }
  */

  Widget _clickbutton(BuildContext context) {
    return Center(
        child: RaisedButton(
          child: Text('Click to the patient screen'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => patientPage()),
            );
          },
        ),
    );
  }
}
