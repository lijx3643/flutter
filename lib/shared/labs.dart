import 'package:test1/services/services.dart';
import 'package:test1/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LabBMP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _bmp = Provider.of<ModelBMP>(context);
    if (_bmp != null) {
      return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Table(
                  border: TableBorder(
                      horizontalInside:
                          BorderSide(width: 2.0, color: Colors.black),
                      verticalInside:
                          BorderSide(width: 2.0, color: Colors.black)),
                  children: [
                    TableRow(
                      children: [
                        _labText('${_bmp.na}', "Na"),
                        _labText('${_bmp.cl}', "Cl"),
                        _labText('${_bmp.bun}', "Bun"),
                      ],
                    ),
                    TableRow(
                      children: [
                        _labText('${_bmp.k}', "K"),
                        _labText('${_bmp.co2}', "Co2"),
                        _labText('${_bmp.creat}', "Creat"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            _labTextWithV('${_bmp.glc}', "Glc"),
          ]);
    }
  }
}

class LabCBC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _cbc = Provider.of<ModelCBC>(context);
    if (_cbc != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _labTextWithV('${_cbc.wbc}', "Wbc", Colors.blue, true),
          
          IntrinsicWidth(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _labText('${_cbc.hb}', "Hb"),
                Divider(
                  color: Colors.black,
                  thickness: 2.0,
                ),
                _labText('${_cbc.hct}', "Hct"),
              ],
            ),
          ),
          _labTextWithV('${_cbc.plt}', "Plt", Colors.orange),
          
        ],
      );
    }
    return Loading();
  }
}

_labText(String s, String t, [Color c = Colors.red]) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.all(4.0),
    // color: c,
    child: Column(
      children: <Widget>[
        Text(s,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            )),
        Text(t,
            style: TextStyle(
              color: Colors.black,
            )),
      ],
    ),
  );
}

_labTextWithV(String s, String t, [Color c = Colors.red, bool onLeft = false]) {
  return Container(
    // margin: EdgeInsets.all(8.0),
    // color: c,
    child: CustomPaint(
      painter: _PaintV(onLeft: onLeft),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 30.0),
          padding: (onLeft)
              ? EdgeInsets.only(right: 16.0)
              : EdgeInsets.only(left: 16.0),
          child: Column(
            children: <Widget>[
              Text(s,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  )),
              Text(t,
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ],
          )),
    ),
  );
}

class _PaintV extends CustomPainter {
  bool onLeft;

  _PaintV({this.onLeft = false});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Colors.black;
    paint.strokeWidth = 2.0;

    // top line
    (onLeft)
        ? canvas.drawLine(
            Offset(0, 0), Offset(size.width, size.height / 2), paint)
        : canvas.drawLine(
            Offset(size.width, 0), Offset(0, size.height / 2), paint);

    // bottom line
    (onLeft)
        ? canvas.drawLine(
            Offset(0, size.height), Offset(size.width, size.height / 2), paint)
        : canvas.drawLine(
            Offset(size.width, size.height), Offset(0, size.height / 2), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
