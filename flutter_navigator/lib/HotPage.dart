import 'package:flutter/material.dart';

class HotPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HotPageState();
  }
}

class HotPageState extends State<HotPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HotPage'),
      ),
      body: Center(
        child: Text('Coding Chef',
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}