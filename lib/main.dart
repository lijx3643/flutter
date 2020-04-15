import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparkline/screens/screens.dart';
import 'package:sparkline/services/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    
    var _streamUser = Firestore.instance
      .collection('try_user')
      .document('user')
      .snapshots()
      .map((v) => User.fromJson(v.data));

    var _streamCBC = Firestore.instance
        .collection('try_labs')
        .document('cbc')
        .snapshots()
        .map((v) => ModelCBC.fromJson(v.data));

    var _streamBMP = Firestore.instance
        .collection('try_labs')
        .document('bmp')
        .snapshots()
        .map((v) => ModelBMP.fromJson(v.data));

    var _streamBP = Firestore.instance
        .collection('try')
        .document('Blood Pressure')
        .snapshots()
        .map((v) => BP.fromJson(v.data));

    var _streamHR = Firestore.instance
        .collection('try')
        .document('Heart Rate')
        .snapshots()
        .map((v) => HR.fromJson(v.data));

    var _streamRR = Firestore.instance
        .collection('try')
        .document('Respiratory Rate')
        .snapshots()
        .map((v) => RR.fromJson(v.data));

    return MultiProvider(
      child: MaterialApp(
        title: 'AI Health',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          //textTheme: TextTheme(body1: TextStyle(fontSize: 30.0)),
        ),
        initialRoute: '/',
        routes: {'/': (context) => MyHomePage()},
        //home: MyHomePage(),
      ),

      providers: [
        StreamProvider<User>.value(value : _streamUser),
        StreamProvider<ModelCBC>.value(value: _streamCBC),
        StreamProvider<ModelBMP>.value(value: _streamBMP),
        StreamProvider<BP>.value(value: _streamBP),
        StreamProvider<HR>.value(value: _streamHR),
        StreamProvider<RR>.value(value: _streamRR),
      ],
    );
  }
}