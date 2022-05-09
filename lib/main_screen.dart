import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/calls.dart';
import 'package:whatsapp_ui/screens/contact.dart';
import 'package:whatsapp_ui/screens/status.dart';
import 'package:whatsapp_ui/style/color.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: lightAppBar,
          title: const Text("WhatsApp"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
          bottom: const TabBar(
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              indicatorWeight: 4,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "CALLS",
                ),
              ]),
        ),
        body: const TabBarView(children: [Contact(), Status(), Calls()]),
      ),
    );
  }
}
