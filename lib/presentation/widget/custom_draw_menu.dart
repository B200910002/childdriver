import 'package:childdriver/config/helper/style.dart';
import 'package:flutter/material.dart';

// import 'package:url_launcher/url_launcher.dart';

class CustomDrawerMenu extends StatelessWidget implements PreferredSizeWidget {
  const CustomDrawerMenu({super.key});

  Future<void> _dialNumber(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    // await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 16, 16, 32),
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () => Navigator.of(context).pop(),
                child: const Row(
                  children: [
                    Icon(Icons.close),
                    SizedBox(width: 8),
                    Text(
                      'Цэс',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                "Хувийн мэдээлэл",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              minLeadingWidth: 0,
              title: const Text("Гарах", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.red)),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
