import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ScreenC'),
        ),
        body: Builder(
          builder: (context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('좋아요를 취소 하시겠습니까?',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.redAccent
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('좋아요가 취소되었습니다.'),
                        duration: Duration(seconds: 3),
                      )
                    );
                  },
                  child: Text('취소하기')
                ),
              ],
            )
          );
          }
        ),
      ),
    );
  }
}