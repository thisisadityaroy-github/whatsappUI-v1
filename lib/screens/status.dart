import 'package:flutter/material.dart';
import 'package:whatsapp_ui/sample_status.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

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
            ),
          ],
        );
      },
    );
  }
}
