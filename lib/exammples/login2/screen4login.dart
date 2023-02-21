import 'package:flutter/material.dart';
import 'package:nav/exammples/login2/screen1login.dart';

class Gridgrid extends StatefulWidget {
  const Gridgrid({Key? key}) : super(key: key);

  @override
  State<Gridgrid> createState() => _GridgridState();
}

class _GridgridState extends State<Gridgrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
            children: [
              ElevatedButton(
                child: const Text('Return'),
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => const Splashlogg()),
                  );
                },
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.94,
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 51,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemBuilder: (context,index){
                    return Container(
                      width: 200,
                      height: 200,
                      color: index.isEven ? Colors.red:Colors.blue,
                      child: Center(child: Text(index.toString(),style: const TextStyle(fontSize: 20),)),
                    );
                  },
                ),
              ),
            ]
        ),
      ),
    );
  }
}