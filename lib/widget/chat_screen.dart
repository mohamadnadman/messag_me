import 'package:flutter/material.dart';

class ChatMessage {
  final String text;
  final bool isSender;
  final DateTime time;

  ChatMessage({
    required this.text,
    required this.isSender,
    required this.time,
  });
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatMessage> messages = [
    ChatMessage(
      text: "Hello!",
      isSender: true,
      time: DateTime.now(),
    ),
    ChatMessage(
      text: "Hi there!",
      isSender: false,
      time: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              child: Icon(Icons.person),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Username'),
                Text(
                  'Last online: 12:00 PM',
                  style: TextStyle(fontSize: 12),
                ), // Last online status in smaller font
              ],
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.video_call),
              onPressed: () {
                // Implement video call action
              },
            ),
            IconButton(
              icon: Icon(Icons.call),
              onPressed: () {
                // Implement voice call action
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return Align(
                  alignment: message.isSender ? Alignment.centerRight : Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: message.isSender ? Colors.pink[100] : Colors.grey[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            message.text,
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                message.time.toString(),
                                style: TextStyle(fontSize: 12),
                              ),
                              if (message.isSender) Icon(Icons.done),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Divider(height: 1),
          _buildMessageComposer(),
        ],
      ),
    );
  }

  Widget _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: 'Type a message'),
              onSubmitted: (value) {
                _sendMessage(value);
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              // Send message
            },
          ),
        ],
      ),
    );
  }

  void _sendMessage(String text) {
    setState(() {
      messages.add(ChatMessage(
        text: text,
        isSender: true,
        time: DateTime.now(),
      ));
    });
  }
}


