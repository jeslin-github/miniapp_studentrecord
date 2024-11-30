import 'package:flutter/material.dart';
import 'package:uiscreen/screens/additional_info/additional_info_screen.dart';
import 'package:uiscreen/screens/catalogue/catelogue_card.dart';
import 'package:uiscreen/screens/payements/payments.dart';
// import 'package:uiscreen/screens/additional_info/additional_info_screen.dart';
// import 'package:uiscreen/screens/dukaan_premium/premium.dart';
// import 'package:uiscreen/screens/manage_store/manage_store.dart';
//import 'package:uiscreen/screens/order/order.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Additional Information',
      home:

          // //  Payments()
          const AdditionaInfoScreen(),
    );
  }
}
