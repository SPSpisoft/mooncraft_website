import 'dart:js';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:async/async.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'myWidgets/onHover.dart';
import 'package:emojis/emoji.dart ';
import 'package:emojis/emojis.dart';
import 'package:persian_fonts/persian_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clipboard/clipboard.dart';
import 'package:floating_snackbar/floating_snackbar.dart';

void main() {
  runApp(home());
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}
int BedwarsPlayers = 0;
String Bedwarsplayers = BedwarsPlayers.toString();
int Survival = 0;
String SurvivalPlayers = Survival.toString();
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mooncraft",
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          centerTitle: false,
          title: GlowButton(
              color: Colors.green,
              glowColor: Colors.green,
              splashColor: Colors.green,
              blurRadius: 5,
              child: Text("داشبورد", style: TextStyle(fontFamily: 'Beirut')),

              //  Icon(Icons.dashboard_outlined)
              onPressed: () {}),
          // leading:

          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "خانه",
                  style: TextStyle(fontFamily: 'Beirut'),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "یگ کزینه ی دیگه",
                  style: TextStyle(fontFamily: 'Beirut'),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "خانه",
                  style: TextStyle(fontFamily: 'Beirut'),
                )),
            Image(image: AssetImage('img.png')),
          ],
        ),
        body: ListView(
          children: [
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('IMAGE5.png'))),
                height: 900,
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ماینکرفت وقتی میچسبه که توی مونکرفت پلی بدی",
                      style: TextStyle(fontFamily: 'Beirut', fontSize: 50),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Align(
                          alignment: Alignment.center,
                          child: OnHover(
                            builder: (isHovered) => GlowButton(
                                child: Row(
                                  children: [
                                    Text(
                                      'بزن بریم',
                                      style: TextStyle(
                                          fontFamily: 'Beirut', fontSize: 55),
                                    )
                                  ],
                                ),
                                onPressed: () {
                                  FlutterClipboard.copy("play.moon-craft.ir");
                                },
                                blurRadius: 60,
                                spreadRadius: 15,
                                width: 200,
                                height: 70,
                                glowColor: Colors.green,
                                color: Colors.green),
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 100),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "مونکرفت یک بستر برای تفریح و لذت بیشتر کاربر های ماینکرفت هست \n که اگر تو هم ماینکرفت بازی میکنی ، بهت پیشنهاد میکنم به مونکرفت یه سری بزنی",
                            style:
                                TextStyle(fontFamily: 'Beirut', fontSize: 20),
                          )),
                    )
                  ],
                )),
            SizedBox(width: double.infinity,height: 50,),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('IMAGE.png'))
              ),
              height: 1000,
              width: 2000,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(5)),
                      OnHover(builder: (isHovered) => Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.black54,
                        ),
                      child: Column(
                        children: [
                          Image(image: AssetImage('bed.png')),
                          Text('بدوارز',style: TextStyle(fontFamily: 'Yekan'),),
                          Text('بازیکنان $Bedwarsplayers',style: TextStyle(fontFamily: 'Beirut'),),
                        ],
                      ),
                      ),),
                      Padding(padding: EdgeInsets.all(5)),
                      OnHover(builder: (isHovered) => Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.black54,
                        ),
                        child: Column(
                          children: [
                            Image(image: AssetImage('sur.png')),
                            Text('سروایوال',style: TextStyle(fontFamily: 'Yekan'),),
                            Text('بازیکنان $SurvivalPlayers',style: TextStyle(fontFamily: 'Beirut'),),
                          ],
                        ),
                      ),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
