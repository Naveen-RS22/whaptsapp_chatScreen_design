import 'package:flutter/material.dart';

class Inittt extends StatefulWidget {
  const Inittt({Key? key}) : super(key: key);

  @override
  State<Inittt> createState() => _InitttState();
}

class _InitttState extends State<Inittt> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scrollview(),
    );
  }
}

class Scrollview extends StatefulWidget {
  const Scrollview({Key? key}) : super(key: key);

  @override
  State<Scrollview> createState() => _ScrollviewState();
}

class _ScrollviewState extends State<Scrollview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context,index){
                      return Container(
                        width: 200,
                        height: 200,
                        color: index.isEven ? Colors.blue : Colors.redAccent,
                        child: Center(child: Text(index.toString(),style: TextStyle(fontSize: 20))),
                      );
                    }
                )

            ),


            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context,index){
                      return Container(
                        width: 200,
                        height: 200,
                        color: index.isEven ? Colors.yellow: Colors.brown,
                        child: Center(child: Text(index.toString(),style: TextStyle(fontSize: 20))),
                      );
                    }
                )
            ),
          ],
        ),
      ),
    );
  }
}


