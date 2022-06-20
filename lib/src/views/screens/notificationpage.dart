import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../models/instagramNotification.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ScrollController controller;

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<dynamic> notifications = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/notifications.json');
    final data = await json.decode(response);

    setState(() {
      notifications = data['notifications']
          .map((data) => InstagramNotification.fromJson(data))
          .toList();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: ListView.builder(
          controller: widget.controller,
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            return Slidable(
              actionPane: const SlidableDrawerActionPane(),
              actionExtentRatio: 0.25,
              child: notificationItem(notifications[index]),
              secondaryActions: <Widget>[
                Container(
                    height: 60,
                    color: Colors.grey.shade500,
                    child: const Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    )),
                Container(
                    height: 60,
                    color: Colors.red,
                    child: const Icon(
                      Icons.delete_outline_sharp,
                      color: Colors.white,
                    )),
              ],
            );
          }),
    );
  }

  notificationItem(InstagramNotification notification) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                notification.hasStory
                    ? Container(
                        width: 50,
                        height: 50,
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.red, Colors.orangeAccent],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomLeft),
                            // border: Border.all(color: Colors.red),
                            shape: BoxShape.circle),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white, width: 3)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(notification.profilePic)),
                        ),
                      )
                    : Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.grey.shade300, width: 1)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(notification.profilePic)),
                      ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: notification.name,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: notification.content,
                        style: const TextStyle(color: Colors.black)),
                    TextSpan(
                      text: notification.timeAgo,
                      style: TextStyle(color: Colors.grey.shade500),
                    )
                  ])),
                )
              ],
            ),
          ),
          notification.postImage != ''
              ? SizedBox(
                  width: 50,
                  height: 50,
                  child:
                      ClipRRect(child: Image.network(notification.postImage)),
                )
              : Container(
                  height: 35,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                      child: Text('Follow',
                          style: TextStyle(color: Colors.white)))),
        ],
      ),
    );
  }
}
