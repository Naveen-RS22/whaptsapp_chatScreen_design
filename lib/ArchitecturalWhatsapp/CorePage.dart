import 'package:flutter/material.dart';

import 'classess.dart';



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
  List<ListOfchats> ListChat = [
    ListOfchats("assets/images/1.png", "Captain Marvel", "Tell The Supreme Intelligence That I'm Coming To End It.", false, "00:05", false, true,true),
    ListOfchats("assets/images/2.png", "Thor 2", "I am Thor, son of Odin!", true, "00:15", true, false,false),
    ListOfchats("assets/images/3.png", "Doctor Strange", "We never lose our demons, Mordo. We only learn to live above them.", false, "00:20", false, false,false),
    ListOfchats("assets/images/4.png", "Iron Man", "I love you 3000", false, "11:37", false, false,true),
    ListOfchats("assets/images/5.png", "Hulk", "Hulk! Smash!", false, "12:26", true, false,false),
    ListOfchats("assets/images/6.png", "Vision", "Humans are odd", false, "12:55", false, false,false),
    ListOfchats("assets/images/7.png", "Black Panther", "Your father taught you all that warrior nonsense—but he also taught you how to think.", false, "11:09", false, false,false),
    ListOfchats("assets/images/8.png", "Spider Man", "With great power comes great responsibility.", false, "11:09", false, false,false),
    ListOfchats("assets/images/9.png", "Ant-Man", "I'm gonna call him Antony.", false, "12:09", false, false,false),
    ListOfchats("assets/images/10.png", "Captain America", "I can do this all day", false, "11:09", false, false,false),
    ListOfchats("assets/images/11.png", "Wanda", "Can a real magic act everything is fake", false, "11:09", false, false,false),
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
                  child: Icon(Icons.search)),
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
            bottom: const TabBar(
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
          body: TabBarView(children: [

            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: ListChat.length,
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
                                backgroundImage: AssetImage(ListChat[index].avatar),
                                radius: 26,
                              ),
                            ),


                            ListChat[index].isonline?
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
                                  ListChat[index].senderName,
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
                                  ListChat[index].LastMessage,
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
                                        ListChat[index].LastMessageTime,
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
                                        ListChat[index].ismuted ?
                                        Container(
                                            padding: const EdgeInsets.only(
                                                top: 0, right: 50),
                                            height: MediaQuery.of(context).size.height*0.04,
                                            width: MediaQuery.of(context).size.width*0.165/2,
                                            child: const Icon(
                                                Icons.volume_off_sharp,
                                                color: Colors.black38)

                                        ) :Icon(null),
                                        ListChat[index].ispinned ?
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

                                        ListChat[index].unopened?
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