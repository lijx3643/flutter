import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:sparkline/services/services.dart';
import 'package:sparkline/shared/shared.dart';

class sparklineBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _sparklineBuildBody(context);
  }
}
  
Widget _sparklineBuildBody(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: <Widget>[
        titleRow("Name"),
        patientCard(context),
        titleRow("Labs"),
        _labValues(),
        titleRow("Vitals"),
        SizedBox(height:6),
        _inforTable(context),
      ]),
    );
  }

  Widget _labValues() {
    return Container(
      color: Colors.white30,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                
                Container(
                  width: 190.0,
                  child: LabBMP()),
                  
                Container(
                  width: 150.0,
                  child: LabCBC()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _inforTable(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              _BPRow(context),
              SizedBox(height: 6),
              _HRRow(context),
              SizedBox(height: 6),
              _RRRow(context),
            ],
          ),
        ],
      ),
    );
  }
  

  Widget _BPsparkline(BuildContext context) {
    var _bp = Provider.of<BP>(context);
    double A = double.parse('${_bp.A}');
    double B = double.parse('${_bp.B}');
    double C = double.parse('${_bp.C}');
    double D = double.parse('${_bp.D}');
    double E = double.parse('${_bp.E}');
    double F = double.parse('${_bp.F}');
    double G = double.parse('${_bp.G}');
    double H = double.parse('${_bp.H}');
    var data = [A, B, C, D, E, F, G, H];
    return Column(
      children: <Widget>[
        Container(
          width: 300,
          height: 100,
          child: Sparkline(
            data: data,
            lineWidth: 2.0,
            lineColor: Colors.blue,
            pointsMode: PointsMode.all,
            pointSize: 4.0,
            pointColor: Colors.amber,
          ),
        ),
      ],
    );
  }

  Widget _HRsparkline(BuildContext context) {
    var _hr = Provider.of<HR>(context);
    double A = double.parse('${_hr.A}');
    double B = double.parse('${_hr.B}');
    double C = double.parse('${_hr.C}');
    double D = double.parse('${_hr.D}');
    double E = double.parse('${_hr.E}');
    double F = double.parse('${_hr.F}');
    double G = double.parse('${_hr.G}');
    double H = double.parse('${_hr.H}');
    var data = [A, B, C, D, E, F, G, H];
    return Column(
      children: <Widget>[
        Container(
          width: 300,
          height: 100,
          child: Sparkline(
            data: data,
            lineWidth: 2.0,
            lineColor: Colors.blue,
            pointsMode: PointsMode.all,
            pointSize: 4.0,
            pointColor: Colors.amber,
          ),
        ),
      ],
    );
  }

  Widget _RRsparkline(BuildContext context) {
    var _rr = Provider.of<RR>(context);
    double A = double.parse('${_rr.A}');
    double B = double.parse('${_rr.B}');
    double C = double.parse('${_rr.C}');
    double D = double.parse('${_rr.D}');
    double E = double.parse('${_rr.E}');
    double F = double.parse('${_rr.F}');
    double G = double.parse('${_rr.G}');
    double H = double.parse('${_rr.H}');
    var data = [A, B, C, D, E, F, G, H];
    return Column(
      children: <Widget>[
        Container(
          width: 300,
          height: 100,
          child: Sparkline(
            data: data,
            lineWidth: 2.0,
            lineColor: Colors.blue,
            pointsMode: PointsMode.all,
            pointSize: 4.0,
            pointColor: Colors.amber,
          ),
        ),
      ],
    );
  }

  Widget _BPRow(BuildContext context) {
    var _bp = Provider.of<BP>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text("Blood Pressure",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                )),
            Text("${_bp.H}",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                )),
            Text("Systolic mm Hg",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                )),
          ],
        ),
        Container(
          width: 250,
          child: _BPsparkline(context),
        ),
      ],
    );
  }

  Widget _HRRow(BuildContext context) {
    var _hr = Provider.of<HR>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text("Heart Rate",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                )),
            Text("${_hr.H}",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                )),
            Text("Beats/min",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                )),
          ],
        ),
        Container(
          width: 250,
          child: _HRsparkline(context),
        ),
      ],
    );
  }

  Widget _RRRow(BuildContext context) {
    var _rr = Provider.of<RR>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text("Respritory Rate",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                )),
            Text("${_rr.H}",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                )),
            Text("Breaths/min",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                )),
          ],
        ),
        Container(
          width: 250,
          child: _RRsparkline(context),
        ),
      ],
    );
  }

  Widget titleRow(String s){
    return Container(

      color: Colors.deepPurple[100],
      height: 36.0,
      width: 360.0,
      child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(s,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                )),
          ],
        )
    );
  }
