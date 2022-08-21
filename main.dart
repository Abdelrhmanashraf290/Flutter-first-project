import 'package:flutter/material.dart';
import 'package:messengerapp/screens/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:messengerapp/screens/homePage.dart';

// void main() {
//   runApp(MyApp());
// }
// //Creating the Main Home Screen UI
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }