import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/sample_contact.dart';
import 'package:whatsapp_ui/screens/chat_screen.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () => Get.to(const ChatScreen()),
                child: ListTile(
                  title: Text(
                    info[index]['name'].toString(),
                    style: const TextStyle(fontSize: 18),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      info[index]['message'].toString(),
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(info[index]["profilePic"].toString()),
                    radius: 30,
                  ),
                  trailing: Text(info[index]['time'].toString(),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      )),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
