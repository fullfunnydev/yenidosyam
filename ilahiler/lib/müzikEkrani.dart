// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ilahiler/mzikler.dart';

class ilahiEkranim extends StatefulWidget {
  var oynatmaSirasi;
  IconData playBtn;
  ilahiEkranim({required this.playBtn, required this.oynatmaSirasi, Key? key})
      : super(key: key);

  @override
  State<ilahiEkranim> createState() => _ilahiEkranimState();
}

class _ilahiEkranimState extends State<ilahiEkranim> {
  bool playing = true;

  Duration position = Duration();
  Duration musicLent = Duration();

  slider() {
    return Slider.adaptive(
      activeColor: Colors.red.shade900,
      inactiveColor: Colors.red.shade400,
      value: position.inSeconds.toDouble(),
      max: musicLent.inSeconds.toDouble(),
      onChanged: (value) {
        seekToSec(value.toInt());
      },
    );
  }

  seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    Oynatici.seek(newPos);
  }

  playOrPause() async {
    Oynatici.pause();
    playing=true;
    widget.playBtn= await Icons.play_arrow;
  }
  PauseOrPlay() async {
    Oynatici.play();
    playing=false;
    widget.playBtn=await Icons.pause;
  }

  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(''),

            AnimatedTextKit(
              repeatForever: true ,
              animatedTexts: [
                WavyAnimatedText('Müziksiz İlahiler',textStyle: GoogleFonts.alegreya(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
                speed: Duration(milliseconds: 180)
                ),

              ],

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(''),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(''),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(''),
                ),
                Center(
                  child: Container(
                    width: wid / 1.80 + 30,
                    height: hei / 3.5 + 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(38),
                        color: Colors.lightGreenAccent,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://c.tenor.com/poSs4tgreIUAAAAC/allah.gif'),
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(''),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text(
                        'İlahi İsmi',
                        style: GoogleFonts.alegreya(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        slider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                widget.oynatmaSirasi--;
                                setState(() {
                                  if (widget.oynatmaSirasi == -1 || widget.oynatmaSirasi == -2) {
                                    widget.oynatmaSirasi = 18;
                                  }
                                  if(widget.playBtn==Icons.play_arrow){
                                    setState((){
                                      widget.playBtn=Icons.pause;
                                    });
                                  }
                                  ilahiSinifi.oynaticiListe(widget.oynatmaSirasi);
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 30,
                                child: Icon(Icons.skip_previous_sharp,
                                    color: Colors.red.shade900, size: 50),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                             if(!playing){
                               setState((){
                                 playOrPause();
                               });
                             }else{
                               setState((){
                                 PauseOrPlay();
                               });
                             }
                                print('Gesture Çalışıyor');
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 50,
                                child: Icon(widget.playBtn,
                                    color: Colors.red.shade900, size: 85),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                widget.oynatmaSirasi++;
                                setState(() {
                                  ilahiSinifi.oynaticiListe(widget.oynatmaSirasi);
                                  if (widget.oynatmaSirasi == 19 || widget.oynatmaSirasi==0) {
                                    setState((){
                                      widget.oynatmaSirasi=0;
                                    });
                                  }
                                  if(widget.playBtn==Icons.play_arrow){
                                    setState((){
                                      widget.playBtn=Icons.pause;
                                    });
                                  }
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Icon(Icons.skip_next,
                                    color: Colors.red.shade900, size: 50),
                                radius: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                  ),
                )
              ],
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue.shade800,
                  Colors.blue.shade300,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*




                                  if (widget.playBtn == Icons.play_arrow) {
                                    Oynatici.play();
                                    widget.playBtn = Icons.pause;
                                  }
                                });
 */
/*
class muzikekrani extends StatefulWidget {

  var siraNo;
  muzikekrani({required this.siraNo, Key? key}) : super(key: key);

  @override
  State<muzikekrani> createState() => _muzikekraniState();
}

class _muzikekraniState extends State<muzikekrani> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                Text('${widget.siraNo}'),
                ElevatedButton(
                    onPressed: () {
                      Oynatici.pause();
                    },
                    child: Text('DURDUR')),
                ElevatedButton(
                    onPressed: () {
                      Oynatici.play();
                    },
                    child: Text('oynat')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          widget.siraNo--;
                          setState(() {
                            if (widget.siraNo == -1 || widget.siraNo == -2) {
                              widget.siraNo = 18;
                            }
                            ilahiSinifi.oynaticiListe(widget.siraNo);
                          });
                        },
                        child: Text('ÖNCEKİ')),
                    ElevatedButton(
                        onPressed: () {
                          widget.siraNo++;
                          setState(() {
                            ilahiSinifi.oynaticiListe(widget.siraNo);
                            if (widget.siraNo == 19 || widget.siraNo==0) {
                             setState((){
                               widget.siraNo=1;
                             });
                            }
                          });
                        },
                        child: Text('SONRAKİ'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

 */
