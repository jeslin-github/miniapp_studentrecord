import 'package:flutter/material.dart';
import 'package:uiscreen/const/commonwidget.dart';
import 'package:uiscreen/screens/dukaan_premium/feature_bar.dart';


class FeatureSection extends StatelessWidget {
  const FeatureSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      padding: const EdgeInsets.only(left: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Features',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          buildFeaturesBar(
              tittle: 'Customer domain name',
              description:
                  'get your own custom domain and build \nyour brand on the internet',
              icons: Icons.language),
          sizedBox5,
          buildFeaturesBar(
              tittle: 'Verfied seller badge',
              description:
                  'get a green verified badge under your \nstore name and build trust',
              icons: Icons.check_circle),
          sizedBox5,
          buildFeaturesBar(
              tittle: 'Dukaan for PC',
              description:
                  'Access the all exculsive preminum \nfeatures on  Dukaan for PC',
              icons: Icons.laptop),
          sizedBox5,
          buildFeaturesBar(
              tittle: 'Priority Support',
              description:
                  'Get your questions resolved with our\n priority customer support',
              icons: Icons.headphones),
        ],
      ),
    );
  }
}
