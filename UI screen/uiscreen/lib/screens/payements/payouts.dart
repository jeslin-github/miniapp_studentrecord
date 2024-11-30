import 'package:flutter/material.dart';

import 'package:uiscreen/const/collections.dart';
import 'package:uiscreen/const/colors.dart';
import 'package:uiscreen/widget/scuessindiacator.dart';

class Payouts extends StatelessWidget {
  const Payouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3),
      child: ListView.separated(
          itemBuilder: (ctx, indexValue) {
            final modIndex = indexValue % 10;
            final orderItem = orderList[modIndex];
            final priceItem = priceList[modIndex].toString();
            final monthItem = monthList[modIndex];
            final dateItem = dateList[modIndex].toString();
            final timeItem = timeList[modIndex];
            // final imageItem = imageList[modIndex];
            return Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/image/tshirt2.png',
                          // imageItem,

                          width: 45,
                          height: 45,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order#$orderItem',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '$monthItem $dateItem,$timeItem',
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '\u20B9$priceItem',
                              style: const TextStyle(
                                  color: greenColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                const SucessIndicator(),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Successful',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Text(
                      '\u20B9$priceItem deposited to 58860200000138',
                      style: const TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                ));
          },
          separatorBuilder: (ctxs, inds) {
            return const Divider(
              thickness: 1,
              color: dividerColor,
            );
          },
          itemCount: 10),
    );
  }
}
