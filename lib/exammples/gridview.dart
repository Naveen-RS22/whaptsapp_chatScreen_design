import 'package:flutter/material.dart';

class Init extends StatefulWidget {
  const Init({Key? key}) : super(key: key);

  @override
  State<Init> createState() => _InitState();
}

class _InitState extends State<Init> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreenview(),
    );
  }
}

class Splashscreenview extends StatefulWidget {
  const Splashscreenview({Key? key}) : super(key: key);

  @override
  State<Splashscreenview> createState() => _SplashscreenviewState();
}

class _SplashscreenviewState extends State<Splashscreenview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
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


