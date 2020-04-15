import 'package:flutter/material.dart';
import 'package:sparkline/shared/shared.dart';

class eventBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _eventBuildBody(context);
  }
}
Widget _eventBuildBody(BuildContext context){
  return Column(
    children: <Widget> [
      _upcomingEventsCard(),
      _cardRow(context),
      _cardRow(context),      
    ]
  );
}

Widget _cardRow(BuildContext context) {
    return Container(
      //alignment: Alignment.topLeft,
      //color: Colors.deepPurple[100],
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
  var card = SizedBox(
      height: 200.0,  
      width: 200,
      child: Card(
        elevation: 6.0, 
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))), 
        child: Column( 
          children: [
            ListTile(
              title: Text('Title',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text('Sub Title'),
              leading: Icon(
                Icons.headset,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: Text('one',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: Text('two'),
              leading: Icon(
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
          itemCount: 4,
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

