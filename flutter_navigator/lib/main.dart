import 'package:flutter/material.dart';
import 'ScreenA.dart';
import 'ScreenB.dart';
import 'ScreenC.dart';
import 'SecondPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigator',
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC(),
        '/s': (context) => SecondPage(),
      },
    );
  }
}

// class MyPage extends StatelessWidget {
//   const MyPage({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First page'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Go to the Second page'),
//           onPressed: () {
//             Navigator.push(context, MaterialPageRoute(
//               // builder: (BuildContext context) {
//               //   return SecondPage();
//               // } 
//               builder: (_) => SecondPage()
//             )); // 첫번째 인자 현재 위치
//           },
//         ),
//       ),
//     );
//   }
// }

// class SecondPage extends StatelessWidget {
//   const SecondPage({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second page'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Go to the First page'),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }