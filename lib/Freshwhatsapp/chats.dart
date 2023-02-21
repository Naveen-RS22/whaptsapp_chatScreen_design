import 'package:flutter/material.dart';

import 'class.dart';



class chats extends StatelessWidget {
  const chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatsData.length,
        itemBuilder: (context, i) =>
            Column(
              children: [
                const Divider(height: 0.1),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: AssetImage(chatsData[i].Pic)),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(chatsData[i].name,
                          style: const TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold)),
                      Text(chatsData[i].time,
                          style: const TextStyle(
                              fontSize: 11.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey))
                    ],
                  ),
                  subtitle:
                  Text(chatsData[i].msg,
                      style: TextStyle(
                          fontSize: 11.0,color: Colors.grey)),
                )
              ],
            ));
  }
}