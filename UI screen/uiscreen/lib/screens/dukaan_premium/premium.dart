import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:material_symbols_icons/symbols.dart';

import 'package:uiscreen/const/colors.dart';
import 'package:uiscreen/const/commonwidget.dart';
import 'package:uiscreen/screens/dukaan_premium/expanded_widget.dart';
import 'package:uiscreen/screens/dukaan_premium/featur_section.dart';
import 'package:uiscreen/screens/dukaan_premium/premium_card.dart';
import 'package:uiscreen/screens/order/order.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Premium extends StatefulWidget {
  const Premium({super.key});

  @override
  State<Premium> createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  final videoURL = 'https://www.youtube.com/watch?v=rwD5AkqRazQ&t=9s';
  late YoutubePlayerController _controller;
  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(autoPlay: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                buildAppBarpremium(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sizedBox130,
                        const FeatureSection(),
                        horizondalDivider1,
                        buildwhatisPremium(),
                        horizondalDivider1,
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              buildFreQuestions('Frequently asked questions'),
                              SizedBox(
                                height: 200,
                                child: ListView(
                                  padding: const EdgeInsets.all(0),
                                  children: const [
                                    ExpandedWidget(
                                      question:
                                          'what type of business can use dukaan premium?',
                                    ),
                                    ExpandedWidget(
                                      question:
                                          'will be there an automatic charge after the paid trail?',
                                    ),
                                    ExpandedWidget(
                                      question: 'what payment do you offer?',
                                    ),
                                    ExpandedWidget(
                                      question:
                                          'what happens when my free trail ends?',
                                    ),
                                    ExpandedWidget(
                                      question:
                                          'what happens when my free trail ends?',
                                    )
                                  ],
                                ),
                              ),
                              horizondalDivider1,
                              buildGetinTouch(),
                              horizondalDivider1,
                              SizedBox(
                                height: 80,
                                width: double.infinity,
                                child: SizedBox(
                                  height: 80,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          side: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 141, 140, 140),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30.0, vertical: 15.0),
                                        ),
                                        child: const Text(
                                          'Select Domain',
                                          style: TextStyle(
                                            color: appBarColor,
                                          ),
                                        ),
                                      ),
                                      OutlinedButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (ctx) {
                                                return Order();
                                              },
                                            ),
                                          );
                                        },
                                        style: OutlinedButton.styleFrom(
                                          backgroundColor: appBarColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30.0, vertical: 15.0),
                                        ),
                                        child: const Text(
                                          'Get Premium',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 75,
            left: 10,
            child: premiumCard(),
          ),
          buildCompanyRight()
        ],
      ),
    );
  }

  Container buildGetinTouch() {
    return Container(
      height: 125,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildFreQuestions('Need help? Get in touch'),
          SizedBox(
            height: 100,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GetinTouchWidget(text: 'Live Chat', icons: Icons.chat_outlined),
                GetinTouchWidget(text: 'Phone Call', icons: Icons.phone)
              ],
            ),
          ),
        ],
      ),
    );
  }

  //?======================extacted  widgets============================================================================

  Text buildFreQuestions(String heading) {
    return Text(
      heading,
      style: const TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
    );
  }

  Container buildwhatisPremium() {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'What is Dukaan premium?',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          sizedBox5,
          Center(
            child: Container(
              width: 450,
              height: 169,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ), //! border not cut here becuse it's played from URL
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildAppBarpremium() {
    return Container(
      height: 120,
      child: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Symbols.arrow_left_alt_rounded,
                size: 40, color: Colors.white)),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: SizedBox(),
        ),
        title: Text(
          "Dukaan Premium",
          style: GoogleFonts.quicksand(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: appBarColor,
      ),
    );
  }

  Positioned buildCompanyRight() {
    return const Positioned(
        top: 95,
        left: 290,
        child: Text(
          '\u00AE ',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ));
  }
}

class GetinTouchWidget extends StatelessWidget {
  final String text;
  final IconData icons;

  const GetinTouchWidget({
    super.key,
    required this.text,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 140,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: dividerColor,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icons),
          Text(
            text,
            style: const TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
