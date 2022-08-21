import 'package:flutter/material.dart';

import 'chatPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatPage(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue[1000],
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'People',
          ),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ChatPage(),
//       //Building the Bottom Navigator Bar
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.red,
//         unselectedItemColor: Colors.grey.shade600,
//         selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
//         unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
//         type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.message),
//             title: Text("Chats"),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.group_work),
//             title: Text("Calls"),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_box),
//             title: Text("People"),
//           ),
//         ],
//       ),

//     );
//   }
// }