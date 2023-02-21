import 'package:flutter/material.dart';

import 'exammples/BottomBar/Firstload.dart';
import 'exammples/TabVieww/AnimationView.dart';


void main() {
  runApp((const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: klkl(),
  )));
}

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
//       ..addListener(() {
//         setState(() {});
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('WhatsApp'),
//           backgroundColor: Color(0xff075e54),
//           actions: <Widget>[
//             IconButton(
//                 icon: Icon(Icons.search, color: Colors.white),
//                 onPressed: () {}),
//             Padding(
//               padding: const EdgeInsets.only(right: 16.0),
//               child: PopupMenuButton(
//                   itemBuilder: (context) => [
//                         PopupMenuItem(
//                           child: const Text('New group'),
//                           onTap: () {},
//                         ),
//                         PopupMenuItem(
//                           child: const Text('New broadcast'),
//                           onTap: () {},
//                         ),
//                         PopupMenuItem(
//                           child: const Text('Linked devices'),
//                           onTap: () {},
//                         ),
//                         PopupMenuItem(
//                           child: const Text('Starred messages'),
//                           onTap: () {},
//                         ),
//                         PopupMenuItem(
//                           child: const Text('Payments'),
//                           onTap: () {},
//                         ),
//                         PopupMenuItem(
//                           child: const Text('Settings'),
//                           onTap: () {},
//                         ),
//                       ]),
//             ),
//           ],
//           bottom: TabBar(
//             indicatorColor: Colors.white,
//             controller: _tabController,
//             tabs: [
//               Tab(
//                 icon: Icon(Icons.camera_alt_rounded),
//               ),
//               Tab(
//                 text: 'CHATS',
//               ),
//               Tab(
//                 text: 'STATUS ',
//               ),
//               Tab(
//                 text: 'CALLS',
//               ),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           controller: _tabController,
//           children: const [
//             camera(),
//             chats(),
//             status(),
//             calls(),
//           ],
//         ),
//         floatingActionButton: _tabController.index == 0
//             ? FloatingActionButton(
//                 onPressed: () {},
//                 child: Icon(Icons.camera_alt_rounded, color: Colors.white),
//                 backgroundColor: Color(0xff075e54),
//               )
//             : _tabController.index == 1
//                 ? FloatingActionButton(
//                     onPressed: () {},
//                     child: Icon(Icons.message, color: Colors.white),
//                     backgroundColor: Color(0xff075e54))
//                 : _tabController.index == 2
//                     ? Column(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                             FloatingActionButton(
//                               backgroundColor: Colors.white,
//                               onPressed: () {},
//                               child: Icon(Icons.edit, color: Colors.blueGrey),
//                             ),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             FloatingActionButton(
//                                 onPressed: () {},
//                                 child: Icon(Icons.camera, color: Colors.white),
//                                 backgroundColor: Color(0xff075e54))
//                           ])
//                     : FloatingActionButton(
//                         onPressed: () {},
//                         child: Icon(Icons.add_call, color: Colors.white),
//                         backgroundColor: Color(0xff075e54)));
//   }
// }
