import 'package:flutter/material.dart';
import 'package:test1/screens/next.dart';
import 'package:test1/screens/screens.dart';
import 'package:test1/shared/app_structure.dart';
import 'package:test1/shared/shared.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarPage(context, 'AI Health'),
      body: _buildBody(context),
      floatingActionButton: fab(context),
      drawer: appDrawer(),
      bottomNavigationBar: _buildBottomNavBar(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.asset('images/2.jpg'),
        SizedBox(height: 6),
        //_nameRow(),
        SizedBox(height: 6),
        //_buildStream(context),
        //patientCard(context),
        //Flexible(child: _buildStream(context)),
        //_clickbutton(context),
      ],
    );
  }

  Widget _clickbutton(BuildContext context) {
    return Center(
        child: RaisedButton(
          child: Text('Click to the next screen'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => nextPage()),
            );
          },
        ),
    );
  }
  

  Widget _nameRow() {
    return Container(
      //alignment: Alignment.topLeft,
      color: Colors.lightGreen,
      //margin: EdgeInsets.only(top: 12.0, left: 36.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text('AI',style: TextStyle(fontSize: 36.0),),
          Text('Health',style: TextStyle(fontSize: 36.0),),
        ],
      ),
    );
  }
/*
  Widget _buildStream(BuildContext context) {
    //return _buildList(context, dummySnapshot);
    var streamBuilder = StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('baby').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        return _buildList(context, snapshot.data.documents); 
      },
    );
    return streamBuilder;
  }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 6.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final record = Record.fromSnapshot(data);

    return Padding(
      key: ValueKey(record.name),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          title: Text(record.name),
          trailing: Text(record.votes.toString()),
          onTap: () => record.reference.updateData({'votes': record.votes + 1})
          //onTap: () => print(record),
        ),
      ),
    );
  }
*/

  Widget _buildBottomNavBar(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Theme.of(context).accentColor,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('My Event'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event),
          title: Text('Agenda'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_outline),
          title: Text('Attendees'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          title: Text('More'),
        ),
      ],
    );
  }
}
/*
class Record {
  final String name;
  final int votes;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['name'] != null),
        assert(map['votes'] != null),
        name = map['name'],
        votes = map['votes'];
  
  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$name:$votes>";    
}
*/
/*
Widget _buildStream(BuildContext context) {
    //return _buildList(context, dummySnapshot);
    var streamBuilder = StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('d_labitems_filtered').snapshots(),
      builder: (context, snapshot) {
        //if (!snapshot.hasData) return LinearProgressIndicator();
        return _buildList(context, snapshot.data.documents); 
      },
    );
    return streamBuilder;
  }



  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 6.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final record = Record.fromSnapshot(data);

    return Padding(
      key: ValueKey(record.label),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          title: Text(record.label),
          trailing: Text(record.row_id.toString()),
          onTap: () => print(record),
        ),
      ),
    );
  }

class Record {
 final String label;
 final int row_id;
 final DocumentReference reference;

 Record.fromMap(Map<String, dynamic> map, {this.reference})
     : label = map['label'],
       row_id = map['row_id'];

 Record.fromSnapshot(DocumentSnapshot snapshot)
     : this.fromMap(snapshot.data, reference: snapshot.reference);

 @override
 String toString() => "Record<$label:$row_id>";
}


*/