import 'package:flutter/material.dart';
import 'package:sparkline/main.dart';
import 'package:sparkline/screens/event.dart';
import 'package:sparkline/shared/shared.dart';
import 'package:sparkline/screens/screens.dart';
import 'sparkline.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _HomeState();
  }
}

class _HomeState extends State<MyHomePage>{
  int _currentIndex = 0;
  final List<Widget> _bodyList= [
    _homeBuild(),
    sparklineBuild(),
    eventBuild(),
    streamBuild(),
    _homeBuild(),
  ];

  final List<String> _idList=[
    "AI Health",
    "Sparkline",
    "My Event",
    "Agenda",
    "More",
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarPage(context, _idList[_currentIndex]),
      body: _bodyList[_currentIndex],
      //floatingActionButton: fab(context),
      drawer: appDrawer(),
      bottomNavigationBar: _buildBottomNavBar(onTabTapped,_currentIndex,context),
      
    );
 }
  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
  }
}

class _homeBuild extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return _homeBuildBody(context);
 }
}

  Widget _homeBuildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.asset('images/2.jpg'),
        SizedBox(height: 6),
        _nameRow(),
        SizedBox(height: 6),
        //_buildStream(context),
        //patientCard(context),
        //Flexible(child: _buildStream(context)),
        //_clickbutton(context),
      ],
    );
  }
/*
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
  
*/
  Widget _nameRow() {
    return Container(
      //alignment: Alignment.topLeft,
      color: Colors.deepPurple[100],
      //margin: EdgeInsets.only(top: 12.0, left: 36.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text('AI',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 36.0),),
          Text('Health',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 36.0),),
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

  Widget _buildBottomNavBar(onTabTapped,_currentIndex,BuildContext context) {
    return BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      fixedColor: Theme.of(context).accentColor,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.show_chart),
          title: Text('Sparkline'),
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
          icon: Icon(Icons.menu),
          title: Text('More'),
        ),
      ],
    );
  }

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