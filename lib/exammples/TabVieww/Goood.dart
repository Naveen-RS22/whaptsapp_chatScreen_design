

import 'package:flutter/material.dart';

import 'SearchPageview.dart';

class ChatListt {
  final String avatar;
  final String senderName;
  final String LastMessage;
  final bool ismuted;
  final String LastMessageTime;
  final bool unopened;
  final bool ispinned;
  final bool isonline;

  ChatListt(this.avatar, this.senderName, this.LastMessage, this.ismuted,
      this.LastMessageTime, this.unopened, this.ispinned,this.isonline);
}

class oodW extends StatelessWidget {
  const oodW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'naveen\'s whatsapp',
      debugShowCheckedModeBanner: false,
      home: Goodww(),
    );
  }
}

class Goodww extends StatefulWidget {
  const Goodww({Key? key}) : super(key: key);

  @override
  State<Goodww> createState() => _GoodwwState();
}

class _GoodwwState extends State<Goodww> {
  String batch = '';
  List<ChatListt> chatList = [
    ChatListt(
        "assets/images/1.png",
        "Captain Marvel",
        "Tell The Supreme Intelligence That I'm Coming To End It.",
        false,
        "00:05",
        false,
        true,true),
    ChatListt("assets/images/2.png", "Thor 2", "I am Thor, son of Odin!", true,
        "00:15", true, false,false),
    ChatListt(
        "assets/images/3.png",
        "Doctor Strange",
        "We never lose our demons, Mordo. We only learn to live above them.",
        false,
        "00:20",
        false,
        false,false),
    ChatListt("assets/images/4.png", "Iron Man", "I love you 3000", false,
        "11:37", false, false,true),
    ChatListt("assets/images/5.png", "Hulk", "Hulk! Smash!", false, "12:26",
        true, false,false),
    ChatListt("assets/images/6.png", "Vision", "Humans are odd", false, "12:55",
        false, false,false),
    ChatListt(
        "assets/images/7.png",
        "Black Panther",
        "Your father taught you all that warrior nonsense—but he also taught you how to think.",
        false,
        "11:09",
        false,
        false,false),
    ChatListt(
        "assets/images/8.png",
        "Spider Man",
        "With great power comes great responsibility.",
        false,
        "11:09",
        false,
        false,false),
    ChatListt("assets/images/9.png", "Ant-Man", "I'm gonna call him Antony.",
        false, "12:09", false, false,false),
    ChatListt("assets/images/10.png", "Captain America",
        "I can do this all day", false, "11:09", false, false,false),
    ChatListt(
        "assets/images/11.png",
        "Wanda",
        "Can a real magic act everything is fake",
        false,
        "11:09",
        false,
        false,false),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "WhatsApp",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600),
            ),
            actions: <Widget>[
              const Padding(
                padding: EdgeInsets.only(right: 14),
              child: Icon(Icons.photo_camera_outlined),),
              Padding(
                  padding: EdgeInsets.only(right: 0),
                  child: IconButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (_) => const SearchPage())),
                      icon: const Icon(Icons.search))),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: PopupMenuButton(
                    itemBuilder: (context) => [
                          PopupMenuItem(
                            child: const Text('New group'),
                            onTap: () {
                              batch = "Batch One";
                            },
                          ),
                          PopupMenuItem(
                            child: const Text('New broadcast'),
                            onTap: () {
                              batch = "Batch Two";
                            },
                          ),
                          PopupMenuItem(
                            child: const Text('Linked devices'),
                            onTap: () {
                              batch = "Batch Three";
                            },
                          ),
                          PopupMenuItem(
                            child: const Text('Starred messages'),
                            onTap: () {
                              batch = "Batch Three";
                            },
                          ),
                          PopupMenuItem(
                            child: const Text('Payments'),
                            onTap: () {
                              batch = "Batch Three";
                            },
                          ),
                          PopupMenuItem(
                            child: const Text('Settings'),
                            onTap: () {
                              batch = "Batch Three";
                            },
                          ),
                        ]),
              ),
            ],
            backgroundColor: const Color(0xff075e54),
            bottom:  const TabBar(
              labelColor: Colors.white,

              tabs: [
                SizedBox(
                  child: Tab(

                    text: "Chats",
                  ),
                ),
                SizedBox(
                    child: Tab(
                  text: "Status",
                )),
                SizedBox(
                    child: Tab(
                  text: "Calls",
                )),
              ],
            ),
          ),
          body: TabBarView(

              children: [

            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: chatList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: MediaQuery.of(context).size.height*0.09,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Stack(children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width*0.16,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(chatList[index].avatar),
                                radius: 26,
                              ),
                            ),


                            chatList[index].isonline?
                              Positioned(
                                left: 38,
                                top: 32,
                                child: Container(
                                  width:20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF0FCE5E),
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1.5,
                                      )),
                                ),
                              ):Icon(null)
                          ]),
                          Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.65,
                                height: MediaQuery.of(context).size.height*0.09/2,
                                padding: EdgeInsets.only(left: 10, top: 11),
                                child: Text(
                                  chatList[index].senderName,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(

                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.black38,
                                      width: 1.0,
                                    ),
                                  ),
                                ),

                                height: MediaQuery.of(context).size.height*0.09/2,
                                width: MediaQuery.of(context).size.width*0.67,
                                padding: EdgeInsets.only(left: 10, top: 1),
                                child: Text(
                                  chatList[index].LastMessage,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 15, color: Colors.black45),
                                ),
                              ),

                            ],
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black38,
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [

                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: 14, left: 14),
                                      width: MediaQuery.of(context).size.width*0.17,
                                      height: MediaQuery.of(context).size.height*0.04,
                                      child: Text(
                                        chatList[index].LastMessageTime,
                                        style: index == 1
                                            ? const TextStyle(
                                                fontSize: 12.5,
                                                color: Color(0xFF0FCE5E),
                                                fontWeight: FontWeight.bold)
                                            : const TextStyle(
                                                fontSize: 12.5,
                                                color: Colors.black38,
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                Stack(
                                  children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    chatList[index].ismuted ?
                                    Container(
                                        padding: const EdgeInsets.only(
                                            top: 0, right: 50),
                                        height: MediaQuery.of(context).size.height*0.04,
                                        width: MediaQuery.of(context).size.width*0.165/2,
                                        child: const Icon(
                                            Icons.volume_off_sharp,
                                            color: Colors.black38)

                                    ) :Icon(null),
                                    chatList[index].ispinned ?
                                   Container(
                                     padding: const EdgeInsets.only(
                                          right: 10),

                                     height: MediaQuery.of(context).size.height*0.04,
                                     width: MediaQuery.of(context).size.width*0.165/2,
                                     child: Transform.rotate(
                                       angle: 0.7,
                                       child: Icon(Icons.push_pin,color: Colors.black38,),
                                     ),
                                   ):Container(),

                                        chatList[index].unopened?
                                          Positioned(
                                            right :20,
                                            child: Container(
                                                alignment: Alignment.center,
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(100),
                                                  color: Color(0xFF0FCE5E),
                                                ),
                                                child: index == 4
                                                    ? const Text("2",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w500))
                                                    : const Text("1",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w500)),
                                              ),
                                          ) :Container()
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],

                      ),

                    );
                  }),
            ),
            const Icon(Icons.adjust_rounded),
            const Icon(Icons.add_call),
          ]),


        ));
  }
}