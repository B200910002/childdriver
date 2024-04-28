
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isSubScreen;

  const CustomAppBar({super.key, required this.title, required this.isSubScreen});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: AppBar(
        centerTitle: false,
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            if (isSubScreen) {
              return IconButton(
                padding: const EdgeInsets.all(10),
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.pop(context),
              );
            } else {
              return IconButton(
                padding: const EdgeInsets.all(10),
                icon: const Icon(Icons.menu, color: Colors.black),
                onPressed: () => Scaffold.of(context).openDrawer(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            }
          },
        ),
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
