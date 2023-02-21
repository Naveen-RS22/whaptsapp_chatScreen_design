import 'package:flutter/material.dart';
import 'package:nav/exammples/login2/screen1login.dart';

class Scrollscroll extends StatefulWidget {
  const Scrollscroll({Key? key}) : super(key: key);

  @override
  State<Scrollscroll> createState() => _ScrollscrollState();
}

class _ScrollscrollState extends State<Scrollscroll> {
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
            ElevatedButton(
              child: const Text('Return'),
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const Splashlogg()),
                );
              },
            ),

            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.45,
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


