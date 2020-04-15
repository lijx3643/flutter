import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class streamBuild extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return _buildStream(context);
 }
}

   Widget _buildStream(BuildContext context) {
   return StreamBuilder<QuerySnapshot>(
     stream: Firestore.instance.collection('try').snapshots(),
     builder: (context, snapshot) {
       if (!snapshot.hasData) return LinearProgressIndicator();

       return _buildList(context, snapshot.data.documents);
     },
   );
 }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 6.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final spark= Spark.fromSnapshot(data);
    double A = spark.A.toDouble();
    double B = spark.B.toDouble();
    double C = spark.C.toDouble();
    double D = spark.D.toDouble();
    double E = spark.E.toDouble();
    double F = spark.F.toDouble();
    double G = spark.G.toDouble();
    double H = spark.H.toDouble();
    var dataList = [A, B, C, D, E, F, G, H];
    return Padding(
      key: ValueKey(spark.A),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: 
        Container(
          width: 300,
          height: 100,
          child: Sparkline(
            data: dataList,
            lineWidth: 2.0,
            lineColor: Colors.blue,
            pointsMode: PointsMode.all,
            pointSize: 4.0,
            pointColor: Colors.amber,
          ),
        ),
    );
  
  }


class Spark {
  final int A;
  final int B;
  final int C;
  final int D;
  final int E;
  final int F;
  final int G;
  final int H;
  final DocumentReference reference;

  Spark.fromMap(Map<String, dynamic> map, {this.reference})
    : A = map['A'],
      B = map['B'],
      C = map['C'],
      D = map['D'],
      E = map['E'],
      F = map['F'],
      G = map['G'],
      H = map['H'];

 Spark.fromSnapshot(DocumentSnapshot snapshot)
     : this.fromMap(snapshot.data, reference: snapshot.reference);

 @override
 String toString() => "Record<$A:$B:$C:$D:$E:$F:$G:$H>";
}
