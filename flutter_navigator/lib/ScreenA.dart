import 'package:flutter/material.dart';
import 'package:flutter_navigator/ScreenC.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenA'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/b');
              },
              child: Text('Go to ScreenB'),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/c');
              },
              child: Text('Go to ScreenC'),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/s');
              },
              child: Text('Go to SecondPage'),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Like a new Snack bar!'),
              duration: Duration(seconds: 3),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScreenC())
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}