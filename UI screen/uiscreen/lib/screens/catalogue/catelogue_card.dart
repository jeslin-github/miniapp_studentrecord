import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uiscreen/const/collections.dart';
import 'package:uiscreen/const/colors.dart';
import 'package:uiscreen/const/commonwidget.dart';

class Catelog extends StatelessWidget {
  const Catelog({super.key});

  @override
  Widget build(BuildContext context) {
    bool value = true;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          leading: GestureDetector(
              onDoubleTap: () {
                Navigator.of(context).pop();
              },
              child: const SizedBox()),
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white54,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    child: Text('Products'),
                  ),
                  Tab(
                    child: Text(
                      'Categories',
                      selectionColor: Colors.white,
                    ),
                  ),
                ],
              )),
          title: buildAppBarText(),
          centerTitle: true,
          backgroundColor: appBarColor,
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
              size: 35,
            ),
            sizedBoxh10
          ],
        ),
        body: Expanded(
          child: TabBarView(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                alignment: Alignment.center,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext ctx, int indexValue) {
                    final modIndex = indexValue % 10;
                    final priceItem = priceList[modIndex].toString();
                    final imageItem = 'assets/image/image1.png';
                    final tittleItem = tittleList[modIndex];
                    return Card(
                      color: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(13),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 7),
                        height: 165,
                        child: Column(
                          children: [
                            SizedBox(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      imageItem,
                                      width: 90,
                                      height: 90,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 140,
                                            child: Text(
                                              tittleItem,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Icon(Icons.more_vert)
                                        ],
                                      ),
                                      const Text(
                                        '1 piece',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            height: 1.6),
                                      ),
                                      Text(
                                        '\u20B9$priceItem',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            height: 1),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Text(
                                              'In stock',
                                              style:
                                                  TextStyle(color: greenColor),
                                            ),
                                            const SizedBox(
                                              width: 70,
                                            ),
                                            Transform.scale(
                                              scale: .8,
                                              child: Switch(
                                                  value: value,
                                                  onChanged: (value) {
                                                    value = !value;
                                                  }),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            horizondalDivider1,
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.share_outlined,
                                  size: 25,
                                ),
                                sizedBoxh10,
                                Text('Share Product')
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text('categories'),
              )
            ],
          ),
        ),
      ),
    );
  }

  Text buildAppBarText() {
    return Text(
      "Catalogue",
      style: GoogleFonts.quicksand(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
