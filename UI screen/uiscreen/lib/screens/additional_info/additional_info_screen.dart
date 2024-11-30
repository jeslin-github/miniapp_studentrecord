import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:uiscreen/const/colors.dart';
import 'package:uiscreen/screens/manage_store/manage_store.dart';
import 'package:google_fonts/google_fonts.dart';

class AdditionaInfoScreen extends StatelessWidget {
  const AdditionaInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Additional Information",
          style: GoogleFonts.quicksand(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor:appBarColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text("Share Dukaan App"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => ManageStoreScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text("Change Language"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            // leading: Icon(Icons.wechat),
            leading: Icon(MdiIcons.whatsapp),

            title: Text("WhatsApp Chat Support"),
            trailing: Switch(
              value: true,
              onChanged: (bool value) {},
            ),
          ),
          ListTile(
            leading: const Icon(Icons.lock),
            title: Text("Privacy Policy"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text("Rate Us"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Sign Out"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          Spacer(),
          Text(
            "Version 2.4.2",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
