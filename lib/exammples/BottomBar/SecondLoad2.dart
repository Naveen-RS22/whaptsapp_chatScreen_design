

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nav/exammples/BottomBar/ThirdLoad.dart';



class networkapi2 extends StatefulWidget {
  const networkapi2({Key? key}) : super(key: key);

  @override
  State<networkapi2> createState() => _networkapi2State();
}

class _networkapi2State extends State<networkapi2> {



  api() async{
    print("api call here");
    var url = Uri.https('dummyjson.com','products/1');
    var response = await http.get(url);
    print("response");
    // var decode=jsonDecode(utf8.decode(response.bodyBytes)) as Map;//converting string to map
    var samp  = SmartPhone.fromJson(jsonDecode(utf8.decode(response.bodyBytes))) ;
    print(samp.images);
    print(samp.images![0]);
    // print(decode['images'][2]);
  }
  @override
  void initState(){
    super.initState();
    api();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("durrr"),
    );

  }
}
