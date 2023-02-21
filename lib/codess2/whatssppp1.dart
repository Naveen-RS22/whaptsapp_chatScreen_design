import 'package:flutter/material.dart';



class CaLL1 extends StatelessWidget {
  const CaLL1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Whatsapp',
      debugShowCheckedModeBanner: false,
      home: CaLLL1(),
    );
  }
}


class CaLLL1 extends StatefulWidget {
  const CaLLL1({Key  ? key}) : super(key: key);

  @override
  State<CaLLL1> createState() => _CaLLL1State();
}

class _CaLLL1State extends State<CaLLL1> {
  String batch='';


  List<String> ChatUsers = [
    "Person 1",
    "Person 2",
    "Person 3",
    "Person 4",
    "Person 5",
    "Person 6",
    "Person 7",
    "Person 8",
    "Person 9",
    "Person 10",

  ];
  List<String> Timeu = [
    "TODAY",
    "0:09",
    "1:05",
    "2:20",
    "3:45",
    "4:02",
    "5:50",
    "6:23",
    "7:12",
    "8:44",
  ];
  List<String> Messages = [
    "hi iam person 1",
    "hi iam person 2",
    "hi iam person 3",
    "hi iam person 4",
    "hi iam person 5",
    "hi",
    "bye",
    "bye bye!!",
    "what are you doing?",
    "is everything ok?",
    "take care!!",




  ];

  final index=0;
  List<String> ImageS = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
];





  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 4,
        initialIndex:0,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp", style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w600),),
            actions:  <Widget>[
              const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: const Text('New group'),
                        onTap: (){
                          batch = "Batch One";
                        },
                      ),
                      PopupMenuItem(
                        child: const Text('New broadcast'),
                        onTap: (){
                          batch = "Batch Two";
                        },
                      ),
                      PopupMenuItem(
                        child: const Text('Linked devices'),
                        onTap: (){
                          batch = "Batch Three";
                        },
                      ),PopupMenuItem(
                        child: const Text('Starred messages'),
                        onTap: (){
                          batch = "Batch Three";
                        },
                      ),PopupMenuItem(
                        child: const Text('Payments'),
                        onTap: (){
                          batch = "Batch Three";
                        },
                      ),PopupMenuItem(
                        child: const Text('Settings'),
                        onTap: (){
                          batch = "Batch Three";
                        },
                      ),
                    ]
                ),
              ),
            ],
            backgroundColor: const Color(0xff075e54),

            bottom: TabBar(
              labelColor: Colors.white,
              tabs: [
                SizedBox(
                  width:MediaQuery.of(context).size.width*0.3,
                  child: const Tab(
                    text: "Chats",
                  ),
                ),
                SizedBox(width:MediaQuery.of(context).size.width*0.3,child: const Tab(text: "Status",)),
                SizedBox(width:MediaQuery.of(context).size.width*0.3,child: const Tab(text: "Calls",)),
              ],
            ),
          ),
          body:  TabBarView(
              children:[

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,

                  child:ListView.builder(
                    itemCount: 10,
                    itemBuilder: (name,index)
                    {
                      return Row(
                          children: [

                            Stack(
                                children: <Widget>[

                                  Image.asset(
                                    "assets/images/"+ImageS[index].toString()+".png",
                                    height: 75,
                                    width: 55,
                                  ),

                                  if(index==0||index==2)
                                    Positioned(
                                      left: 35,
                                      top: 52,
                                      child: Container(
                                        width: 17,
                                        height: 17,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.circular(
                                              100
                                          ),
                                        ),
                                      ),
                                    ),
                                ]
                            ),
                            Container(
                              height:75,
                              width:MediaQuery.of(context).size.width-140,

                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.black38,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [

                                   Container(
                                      padding: EdgeInsets.only(left:10,top: 7),
                                      child: Text(
                                        ChatUsers[index].toString(),
                                        style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),

                                      ),
                                    ),


                                  Container(
                                    padding: EdgeInsets.only(left:10,top: 7),
                                    child: Text(
                                      Messages[index].toString(),
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(fontSize: 15,color: Colors.black45),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left:17.5,top: 14),
                              height: 75,
                              width:85,
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.black38,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              child:
                              Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        Timeu[index].toString(),
                                        style:index==1? const TextStyle(fontSize: 12.5,color: Colors.green,fontWeight: FontWeight.bold):const TextStyle(
                                            fontSize: 12.5,
                                            color: Colors.black38,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height:8,
                                    ),
                                    if(index==1)
                                      const Align(
                                          child: Icon(Icons.volume_off,color: Colors.black38,)
                                      ),
                                    if(index==0)
                                      const Align(
                                          child: Icon(Icons.pin_drop_sharp,color: Colors.black38,)
                                      ),
                                    if(index==3)
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        height: 17,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.circular(100),
                                        ),
                                        child: const Text ("1"
                                          ,style: TextStyle(
                                              color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold
                                          ),),
                                      ),
                                    if(index==5)
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        height: 17,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.circular(100),
                                        ),
                                        child: const Text ("2"
                                          ,style: TextStyle(
                                              color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold
                                          ),),
                                      ),
                                  ]
                              ),
                            )
                          ]
                      );


                    },

                  ),

                ),
                const Icon(Icons.adjust_rounded),
                const Icon(Icons.add_call),
              ]),
        ));
  }
}
