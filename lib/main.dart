import 'dart:js';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:async/async.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:mooncraft_website/dashboard.dart';
import 'package:mooncraft_website/myWidgets/DashboardContainer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'myWidgets/onHover.dart';
import 'package:emojis/emoji.dart ';
import 'package:emojis/emojis.dart';
import 'package:persian_fonts/persian_fonts.dart';
import 'package:clipboard/clipboard.dart';
import 'package:floating_snackbar/floating_snackbar.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:snowfall/snowfall.dart';
import 'package:flutter/rendering.dart';
import 'package:animated_styled_widget/animated_styled_widget.dart';
import 'package:get/get.dart';

void main() {
  runApp(home());
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

int BedwarsPlayers = 20;
String Bedwarsplayers = BedwarsPlayers.toString();
int Survival = 1000;
String SurvivalPlayers = Survival.toString();
int Players = Survival + BedwarsPlayers;
String players = Players.toString();
int GameModes = 2;
String Gamemodes = GameModes.toString();

class _homeState extends State<home> {

  //homescroll
  final homeKey = GlobalKey();

  Future scrollToHome() async {
    final context = homeKey.currentContext!;

    await Scrollable.ensureVisible(context, duration: Duration(seconds: 2));
  }

  //gamemodes scroll
  final gamemodesKey = GlobalKey();

  Future scrollToGamemode() async {
    final context = gamemodesKey.currentContext!;

    await Scrollable.ensureVisible(context, duration: Duration(seconds: 2));
  }

// about us Scroll
  final aboutUsKey = GlobalKey();

  Future scrolltoaboutUs() async {
    final context = aboutUsKey.currentContext!;

    await Scrollable.ensureVisible(context, duration: Duration(seconds: 2));
  }

  //focus
  bool focus = false;

  //URLS
  _launchDiscord() async {
    const url =
        'https://discord.com/channels/949736455075426434/1071758465070010528';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchTelegram() async {
    const url = 'https://t.me/themooncraft';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  //URLS
  //visiblity
  bool Vis = false;
  int a = 1;

@override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
              child: Text("??????????????", style: TextStyle(fontFamily: 'Beirut')),
              onPressed: () {
                Get.to(dashboardPage());
                //Navigator There

                // Navigator.of(context).push(PageRouteBuilder(
                //   pageBuilder: (context, animation, secondaryAnimation) =>
                //       const dashboardPage(),
                //   transitionsBuilder: (context, animation, secondaryAnimation, child) {
                //     return child;
                //   },
                // ));

              }),
          // leading:

          actions: [
            TextButton(
                onPressed: () => scrollToHome(),
                child: GlowText(
                  "??????????",
                  style: TextStyle(fontFamily: 'Beirut', color: Colors.green),
                )),
            TextButton(
                onPressed: () => scrollToGamemode(),
                child: GlowText(
                  "?????? ?????? ????",
                  style: TextStyle(fontFamily: 'Beirut', color: Colors.green),
                )),
            TextButton(
                onPressed: () => scrolltoaboutUs(),
                child: GlowText(
                  "???????????? ?? ????????",
                  style: TextStyle(fontFamily: 'Beirut', color: Colors.green),
                )),
            TextButton(
                onPressed: () => scrollToHome(),
                child: GlowText(
                  "????????",
                  style: TextStyle(fontFamily: 'Beirut', color: Colors.green),
                )),
            Image(image: AssetImage('img.png'), width: 125),
          ],
        ),
        body: ListView(
          children: [
            Container(
                //key: homeKey,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.none,
                  image: AssetImage('IMAGE5.png'),
                )),
                height: 900,
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      key: homeKey,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          //key: homeKey,
                          children: [
                            GlowIcon(
                              glowColor: Colors.white,
                              blurRadius: 2,
                              Icons.people_rounded,
                              size: 80,
                            ),
                            GlowText(
                              textAlign: TextAlign.center,
                              "????????????????" + " " + "$players",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Beirut',
                              ),
                            ),
                            // GlowText(,
                            //     textAlign: TextAlign.center,
                            //     glowColor: Colors.white,
                            //     blurRadius: 2,
                            //     style: TextStyle(
                            //         fontSize: 20, fontFamily: 'Beirut')),
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                          left: 5,
                        )),
                        Column(
                          children: [
                            GlowIcon(
                              Icons.gamepad_rounded,
                              blurRadius: 2,
                              glowColor: Colors.white,
                              size: 80,
                            ),
                            GlowText("?????? ??????????" + " " + "$Gamemodes",
                                glowColor: Colors.white,
                                blurRadius: 2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, fontFamily: 'Beirut')),
                          ],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(20)),
                    Text(
                      "???????????????? ???????? ???????????? ???? ?????? ?????????????? ?????? ??????",
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
                                      '?????? ????????',
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
                            textAlign: TextAlign.center,
                            "?????????????? ???? ???????? ???????? ?????????? ?? ?????? ?????????? ?????????? ?????? ???????????????? ?????? \n ???? ?????? ???? ???? ???????????????? ???????? ?????????? ?? ?????? ?????????????? ?????????? ???? ?????????????? ???? ?????? ????????",
                            style:
                                TextStyle(fontFamily: 'Beirut', fontSize: 20),
                          )),
                    )
                  ],
                )),
            SizedBox(
              height: 360,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('???????????? ???? ??????????',style: TextStyle(fontFamily: 'Beirut',fontSize: 40),textAlign: TextAlign.end),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child:
                        OnHover(builder: (isHovered) => Container(
                          height: 200,
                          width: 360,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("hacker.jpg"),fit: BoxFit.fill),
                              border: Border.all(width: 5,
                                  color: isHovered
                                      ? Colors.green
                                      : Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              boxShadow:[ BoxShadow(
                                  color: Colors.black45,
                                  blurStyle: BlurStyle.inner,
                                  blurRadius: 5,
                                  offset: Offset(5, 5),spreadRadius: 5)]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [GlowText('?????? ????',style: TextStyle(fontSize: 40,fontFamily: 'Beirut')),],

                          ),)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child:
                        OnHover(builder: (isHovered) => Container(
                          height: 200,
                          width: 360,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("graphic.jfif"),fit: BoxFit.fill),
                              border: Border.all(width: 5,
                                  color: isHovered
                                      ? Colors.green
                                      : Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              boxShadow:[ BoxShadow(
                                  color: Colors.black45,
                                  blurStyle: BlurStyle.inner,
                                  blurRadius: 5,
                                  offset: Offset(5, 5),spreadRadius: 5)]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [GlowText('?????????????? ?????????????? ????????????????',style: TextStyle(fontSize: 40,fontFamily: 'Beirut',),textAlign: TextAlign.center),],

                          ),)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child:
                        OnHover(builder: (isHovered) => Container(
                          height: 200,
                          width: 360,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("boss.jfif"),fit: BoxFit.fill),
                            border: Border.all(width: 5,
                                color: isHovered
                                    ? Colors.green
                                    : Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [GlowText('?????? ????',style: TextStyle(fontSize: 40,fontFamily: 'Beirut')),],

                          ),)),
                      )
                    ],
                  ),
                ],
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage('IMAGE.png'))),
                height: 900,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GlowText(
                      blurRadius: 1,
                      "?????? ??????????",
                      key: gamemodesKey,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: 'Beirut',
                        fontSize: 80,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 15)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        OnHover(
                          builder: (isHovered) => Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 5,
                                  color: isHovered
                                      ? Colors.green
                                      : Colors.transparent),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              color: Colors.black54,
                            ),
                            child: Column(
                              children: [
                                Image(
                                    image: AssetImage('bed.png'),
                                    width: 200,
                                    height: 200),
                                Text(
                                  '???????????? ',
                                  style: TextStyle(fontFamily: 'Yekan'),
                                ),
                                Text(
                                  '???????????????? $Bedwarsplayers',
                                  style: TextStyle(fontFamily: 'Beirut'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        OnHover(
                          builder: (isHovered) => Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 5,
                                  color: isHovered
                                      ? Colors.green
                                      : Colors.transparent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.black54,
                            ),
                            child: Column(
                              children: [
                                Image(image: AssetImage('sur.png')),
                                Text(
                                  '????????????????',
                                  style: TextStyle(fontFamily: 'Yekan'),
                                ),
                                Text(
                                  '???????????????? $SurvivalPlayers',
                                  style: TextStyle(fontFamily: 'Beirut'),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage('Untitled3.png'))),
                height: 900,
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: 10,
                      ),
                      child: Text(
                        "?????????? ???????????? ???????? ???????????????? ?????????? ???????? ????????????????",
                        style: TextStyle(fontFamily: 'Beirut', fontSize: 50),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10, top: 10),
                      child: Text(
                        textAlign: TextAlign.right,
                        "?????????? ???? ???????? ???????? ???? ?????????? ?? "
                        "???????????????? "
                        "???????? ?????????? ???????????? ???????? "
                        "?? ???????????????? ?????????????????? ?????? ???????????? ???????????? ???????? ?? ... ???? (??????????) ?????????? ?????? ??????"
                        "\n ???? ???????? ?????????????? ???? ???????????? ???? ?????? ?????? ???? ???????? ?? ???????? ???? ???? ???????? ??????????",
                        style: TextStyle(
                          fontFamily: 'Beirut',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              key: aboutUsKey,
            ),
            Container(
              width: double.infinity,
              height: 500,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      OnHover(
                        builder: (isHovered) => Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(100, 40, 40, 40),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                                width: 5,
                                color: isHovered
                                    ? Colors.green
                                    : Colors.transparent),
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              ColorizeAnimatedText(
                                textAlign: TextAlign.center,
                                "BEHNAM [OWNER]",
                                textStyle: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Yekan',
                                ),
                                colors: [
                                  Colors.red,
                                  Colors.purple,
                                  Colors.blue
                                ],
                                speed: Duration(seconds: 1),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      OnHover(
                        builder: (isHovered) => Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(100, 40, 40, 40),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                                width: 5,
                                color: isHovered
                                    ? Colors.green
                                    : Colors.transparent),
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              ColorizeAnimatedText(
                                textAlign: TextAlign.center,
                                "YASIN [OWNER]",
                                textStyle: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Yekan',
                                ),
                                colors: [
                                  Colors.red,
                                  Colors.purple,
                                  Colors.blue
                                ],
                                speed: Duration(seconds: 1),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      OnHover(
                        builder: (isHovered) => Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(100, 40, 40, 40),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                                width: 5,
                                color: isHovered
                                    ? Colors.green
                                    : Colors.transparent),
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              ColorizeAnimatedText(
                                textAlign: TextAlign.center,
                                "MASKEDBOYFOUND [DEV]",
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Yekan',
                                ),
                                colors: [
                                  Colors.red,
                                  Colors.purple,
                                  Colors.blue
                                ],
                                speed: Duration(seconds: 1),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                    left: 5,
                  )),
                  Column(
                    children: [
                      OnHover(
                        builder: (isHovered) => Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(100, 40, 40, 40),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                                width: 5,
                                color: isHovered
                                    ? Colors.green
                                    : Colors.transparent),
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              ColorizeAnimatedText(
                                textAlign: TextAlign.center,
                                "MaskedBoyNotFound [DEV]",
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Yekan',
                                ),
                                colors: [
                                  Colors.red,
                                  Colors.purple,
                                  Colors.blue
                                ],
                                speed: Duration(seconds: 1),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      OnHover(
                        builder: (isHovered) => Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(100, 40, 40, 40),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                                width: 5,
                                color: isHovered
                                    ? Colors.green
                                    : Colors.transparent),
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              ColorizeAnimatedText(
                                textAlign: TextAlign.center,
                                "Neganexe [ADMIN]",
                                textStyle: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Yekan',
                                ),
                                colors: [
                                  Colors.red,
                                  Colors.purple,
                                  Colors.blue
                                ],
                                speed: Duration(seconds: 1),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      OnHover(
                        builder: (isHovered) => Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(100, 40, 40, 40),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                                width: 5,
                                color: isHovered
                                    ? Colors.green
                                    : Colors.transparent),
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              ColorizeAnimatedText(
                                textAlign: TextAlign.center,
                                "AMIR [BOT-DEV]",
                                textStyle: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Yekan',
                                ),
                                colors: [
                                  Colors.red,
                                  Colors.purple,
                                  Colors.blue
                                ],
                                speed: Duration(seconds: 1),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                    left: 5,
                  )),
                  Column(
                    children: [
                      OnHover(
                        builder: (isHovered) => Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(100, 40, 40, 40),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                                width: 5,
                                color: isHovered
                                    ? Colors.green
                                    : Colors.transparent),
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              ColorizeAnimatedText(
                                textAlign: TextAlign.center,
                                "ALI [BUILDER]",
                                textStyle: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Yekan',
                                ),
                                colors: [
                                  Colors.red,
                                  Colors.purple,
                                  Colors.blue
                                ],
                                speed: Duration(seconds: 1),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      OnHover(
                        builder: (isHovered) => Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(100, 40, 40, 40),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                                width: 5,
                                color: isHovered
                                    ? Colors.green
                                    : Colors.transparent),
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              ColorizeAnimatedText(
                                textAlign: TextAlign.center,
                                "YASIN & TECHNO [HELPER]",
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Yekan',
                                ),
                                colors: [
                                  Colors.red,
                                  Colors.purple,
                                  Colors.blue
                                ],
                                speed: Duration(seconds: 1),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      OnHover(
                        builder: (isHovered) => Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(100, 40, 40, 40),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                                width: 5,
                                color: isHovered
                                    ? Colors.green
                                    : Colors.transparent),
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              ColorizeAnimatedText(
                                textAlign: TextAlign.center,
                                "??M??G?? [DISCORD-CONFIGURE]",
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Yekan',
                                ),
                                colors: [
                                  Colors.red,
                                  Colors.purple,
                                  Colors.blue
                                ],
                                speed: Duration(seconds: 1),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //the last container
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Container(
                color: Colors.black45,
                width: double.infinity,
                height: 200,
                child: Column(
                  children: [
                    Image(image: AssetImage('img.png'), width: 150),
                    Text("???????????????? ??????????",
                        style: TextStyle(fontFamily: 'Beirut')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OnHover(
                          builder: (isHovered) => IconButton(
                              color:
                                  isHovered ? Colors.deepPurple : Colors.white,
                              onPressed: _launchDiscord,
                              icon: Icon(Icons.discord_rounded)),
                        ),
                        OnHover(
                          builder: (isHovered) => IconButton(
                              // color: isHovered ?Colors.lightBlue :Colors.transparent,
                              onPressed: _launchTelegram,
                              icon: Icon(
                                Icons.telegram_rounded,
                                color:
                                    isHovered ? Colors.lightBlue : Colors.white,
                              )),
                        ),
                        OnHover(
                          builder: (isHovered) => IconButton(
                              // color: isHovered ?Colors.lightBlue :Colors.transparent,
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.instagram,
                                color: isHovered
                                    ? Colors.deepOrange
                                    : Colors.white,
                              )),
                        ),
                      ],
                    ),
                    Text(
                      "?? 2023-2023 Mooncraft. All rights reserved.",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
