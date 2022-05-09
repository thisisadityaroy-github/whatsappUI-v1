import 'package:flutter/material.dart';
import 'package:whatsapp_ui/custom_widget/message_card.dart';
import 'package:whatsapp_ui/custom_widget/sender_card.dart';
import 'package:whatsapp_ui/sample_contact.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['sent'] == true) {
          return MessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        }
        return SenderCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString());
      },
    );
  }
}
