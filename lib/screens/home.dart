import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_vista/services/services.dart';
import 'package:flutter_vista/shared/shared.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _test = Provider.of<ModelTest>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: (_test != null)
          ? Center(
              child: Text('${_test.title}'),
            )
          : Loading(),
    );
  }
}
