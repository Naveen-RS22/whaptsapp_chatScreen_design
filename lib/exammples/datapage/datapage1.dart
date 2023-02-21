import 'package:flutter/material.dart';


import 'datapage2.dart';

void main() {
  runApp(const aabb());
}

class aabb extends StatelessWidget {
  const aabb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Sign up'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// To listen to the changes in the textfield.
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phoneno = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

              SizedBox(
                width: 500,
                child: TextField(
                  controller: _name,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Enter your Name"),
                ),
              ),
            const SizedBox(
              height: 20,
            ),



              SizedBox(
                width: 500,
                child: TextField(
                  controller: _email,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your Email"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),


              SizedBox(
                width: 500,
                child: TextField(
                  controller: _phoneno,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your Phone Number"),
                ),
              ),

            // Button to go to the nextpage.
            TextButton(
                onPressed: () {
                  // Navigator to the next page.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      // Builder for the nextpage
                      // class's constructor.
                        builder: (context) => nextpage(
                          // Date as arguments to
                          // send to next page.
                          name: _name.text,
                          email: _email.text,
                          phoneno: _phoneno.text,
                        )),
                  );
                },
                child: Text("SEND"))
          ],
        ),
      ),
    );
  }
}
