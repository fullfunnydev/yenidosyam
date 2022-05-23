// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ilahiler/m%C3%BCzikEkrani.dart';
import 'package:ilahiler/mzikler.dart';
import 'package:ilahiler/veriler.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff162a10),
        appBar: AppBar(
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
          backgroundColor: Colors.black,
          bottom: PreferredSize(
            child: Column(
              children: [
                Text(''),
              ],
            ),
            preferredSize: Size.fromHeight(30),
          ),
          title: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TyperAnimatedText(
                'MÜZİKSİZ İLAHİLER',
                speed: Duration(milliseconds: 100),
                textStyle: GoogleFonts.vt323(
                    color: Color(0xff00a500),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: AnimationLimiter(
          child: ListView.builder(
            padding: EdgeInsets.all(_w / 30),
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: ilahiisimleri.length,
            itemBuilder: (BuildContext c, int i) {
              return AnimationConfiguration.staggeredList(
                position: i,
                delay: Duration(milliseconds: 600),
                child: SlideAnimation(
                  duration: Duration(milliseconds: 2500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  horizontalOffset: 30,
                  verticalOffset: 300.0,
                  child: FlipAnimation(
                    duration: Duration(milliseconds: 2500),
                    curve: Curves.ease,
                    flipAxis: FlipAxis.y,
                    child: Container(
                      child: Center(
                        child: ListTile(
                          trailing: GestureDetector(
                            onTap: () {
                              ilahiSinifi.oynaticiListe(i);
                              Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                      pageBuilder: (context, a, b) =>
                                          ilahiEkranim(oynatmaSirasi: i,playBtn: Icons.pause,)));
                            },
                            child: Icon(Icons.play_circle_outline_outlined,
                                size: 60, color: Colors.green),
                          ),
                          subtitle: Text(
                            '${ilahiisimleri[i]}',
                            style: GoogleFonts.alegreyaSans(
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: _w / 20),
                      height: _w / 3.5,
                      decoration: BoxDecoration(
                        color: Color(0xff162a10),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4.0,
                              offset: Offset(-1, -2),
                              color: Color(0xff1f4f16)),
                          BoxShadow(
                            blurRadius: 4.0,
                            offset: Offset(3, 6),
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

/*
AnimatedTextKit(
                            animatedTexts: [
                             TyperAnimatedText('Canım Kurban Olsun Sana',
                             speed: Duration(milliseconds: 100),
                             textStyle: GoogleFonts.vt323(
                               color: Color(0xffffffff),
                               fontWeight: FontWeight.bold,
                               fontSize: 35,
                             ),
                             )
                            ],
                          ),
 */
