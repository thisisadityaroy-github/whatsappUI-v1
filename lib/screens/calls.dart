import 'package:flutter/material.dart';
import 'package:whatsapp_ui/sample_status.dart';
import 'package:whatsapp_ui/style/color.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sampleStatus.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text(
                sampleStatus[index]['name'].toString(),
                style: const TextStyle(fontSize: 18),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  sampleStatus[index]['time'].toString(),
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(sampleStatus[index]["profilePic"].toString()),
                radius: 30,
              ),
              trailing: Icon(
                Icons.call,
                color: lightAppBar,
              ),
            ),
          ],
        );
      },
    );
  }
}
