import 'package:flutter/material.dart';
import 'package:messagme/widget/chat_screen.dart';

class ChatUserCard extends StatefulWidget {
  const ChatUserCard({super.key});

  @override
  State<ChatUserCard> createState() => _ChatUserCardState();
}

class _ChatUserCardState extends State<ChatUserCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatScreen()),
        );
      },
      child:const Card(child: ListTile(
        leading: CircleAvatar(child: Icon(Icons.person)),
        title:Text('User'),
        subtitle: Text('last user message'),
        trailing:Text('01.00 PM'),
      ),
      ),
      
      );
  }
}