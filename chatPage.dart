import 'package:flutter/material.dart';

import '../models/chatUsersModel.dart';
import '../widgets/conversationList.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "john",
        messageT : "Hello , Can I ask you about something ?",
        imageURL:
            "https://imgs.search.brave.com/9EiXmfbnEJnAto-LgDG7YbYL00Je7OUpUPwvZJKqlLY/rs:fit:713:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5t/bjJxdFFrTVFkZUJv/Umk2bnBUbENRSGFF/NyZwaWQ9QXBp",
        time: "Now"),
    ChatUsers(
        name: "Sam ",
        messageText: "GOD save our instructor",
        imageURL:
            "https://imgs.search.brave.com/DIDY3r_7ymNbNi57GvGRvEex25J1RYSA6Ab1v080sIY/rs:fit:799:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5f/VlZheERDa3h6WEk1/TXhpZExseHBBSGFF/WiZwaWQ9QXBp",
        time: "Yesterday"),
    ChatUsers(
        name: "Alice",
        messageText: "I wish i be in 2020 .. ",
        imageURL:
            "https://imgs.search.brave.com/5nqlDVE0GrPvSP5-5K_NvfJhi2lo72aESE7pfU-bF_Y/rs:fit:632:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC4y/T3VWVlpaSkNUNXlU/WENKbEtTSnNRSGFG/aiZwaWQ9QXBp",
        time: "21 August"),
    ChatUsers(
        name: "Jacob Pena",
        messageText: "I'm busy right now , you can contact me later..  ",
        imageURL:
            "https://imgs.search.brave.com/5nqlDVE0GrPvSP5-5K_NvfJhi2lo72aESE7pfU-bF_Y/rs:fit:632:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC4y/T3VWVlpaSkNUNXlU/WENKbEtTSnNRSGFG/aiZwaWQ9QXBp",
        time: "today"),
    ChatUsers(
        name: "Harry ",
        messageText: "Thankyou, It's the best thing i've seen for long time ..",
        imageURL:
            "https://th.bing.com/th/id/R.db9031f206909566c82036a776f7b4d0?rik=lteOWaPuoRq%2bow&riu=http%3a%2f%2fnaibuzz.com%2fwp-content%2fuploads%2f2016%2f08%2fJacob.jpg&ehk=YEh7vuRbuQ94wSsfE1csQ84Dy9wxrFEvGEK9PdlfBPA%3d&risl=&pid=ImgRaw&r=0",
        time: "morning yesterday"),
    ChatUsers(
        name: "Sara ",
        messageText: "I'm hungry now , let's order something to eat .. ",
        imageURL:
            "https://egypttoursinn.com/wp-content/uploads/2022/06/Egypt-Explorer-8-Days-Honeymoon-Holiday-Egypt-Tours-Inn.jpg",
        time: "18 Aug"),
    ChatUsers(
        name: "Mariam",
        messageText: "I'm interested in a cash offer for my property",
        imageURL:
            "https://imgs.search.brave.com/oWCELPd21O4WAHg5_GObRdAhX-jUdbfZ7V-VYLGzaOU/rs:fit:844:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5r/eUxxZXpSZ3ZiRXRi/QWJCSlJrR19RSGFF/SyZwaWQ9QXBp",
        time: "Last year"),
    ChatUsers(
        name: "Bob",
        messageText: "When the last time you are upset then ? ",
        imageURL:
            "https://imgs.search.brave.com/AH-bwjvVMwhJEjuCgs7uQcvIjfxUmBKJmQlvQAjC-vs/rs:fit:708:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5t/djViNmt1LVhOdTFu/bUplUFllUThBSGFF/OSZwaWQ9QXBp",
        time: "now"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Chats",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 0, left: 16, right: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade600,
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey.shade100)),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 0, left: 16, right: 16),
                child: ListView.builder(
                  itemCount: chatUsers.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 16),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ConversationList(
                      name: chatUsers[index].name,
                      messageText: chatUsers[index].messageText,
                      imageUrl: chatUsers[index].imageURL,
                      time: chatUsers[index].time,
                      isMessageRead: (index == 0 || index == 3) ? true : false,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
