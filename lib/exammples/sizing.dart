import 'package:flutter/material.dart';

class sizing extends StatefulWidget {
  const sizing({Key? key}) : super(key: key);

  @override
  State<sizing> createState() => _sizingState();
}

class _sizingState extends State<sizing> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(



      debugShowCheckedModeBanner: false,
      home: SizingView(),
    );
  }
}

class SizingView extends StatefulWidget {
  const SizingView({Key? key}) : super(key: key);

  @override
  State<SizingView> createState() => _SizingViewState();
}

class _SizingViewState extends State<SizingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.brown,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                  ),

                  Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),


                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),


            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              color: Colors.grey,


            ),
          ],
        ),
      ),
    );
  }
}


