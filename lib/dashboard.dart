import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:snowfall/snowfall.dart';

class dashboardPage extends StatefulWidget {
  const dashboardPage({Key? key}) : super(key: key);

  @override
  State<dashboardPage> createState() => _dashboardPageState();
}

class _dashboardPageState extends State<dashboardPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () => Get.back(),color: Colors.white,),
          backgroundColor: Colors.black54,
          centerTitle: true,
          title: Image(image: AssetImage("img.png"),width: 150,),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("wallpaper.png"),fit: BoxFit.fill)
          ),
          child: Center(child: Container(
            height: 500,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Column(
              children: [
                Image(image: AssetImage("Login.png"),height: 50,),

              ],
            ),
          )
          ),
        ),
      )
    );
  }
}
