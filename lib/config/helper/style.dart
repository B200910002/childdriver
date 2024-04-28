import 'package:flutter/material.dart';

const appColor = Color.fromARGB(255, 160, 32, 240); // #0A63B0
const successColor = Color.fromARGB(255, 26, 92, 46); // #1A5C2E
const inactiveColor = Color.fromARGB(255, 228, 228, 228); // #1A5C2E
const warnColor= Color.fromARGB(255, 255, 138, 0); // #FF8A00
const dangerButtonColor = Color.fromARGB(255, 176, 10, 10); // #B00A0A
const callButtonColor = Color.fromARGB(255, 99, 176, 10); // #63B00A
const greyColor = Color.fromARGB(255, 130, 130, 130); // #828282
const yellow = Color.fromARGB(255, 252, 194, 27); // #FCC21B
const menuColor = Color.fromARGB(255, 246, 246, 246); // #F6F6F6

const inactiveAppColor = Color.fromARGB(255, 159, 233, 231); // #9FE9E7
const communityColor = Color.fromARGB(255, 32, 164, 210); // #20A4D2
const businessColor = Color.fromARGB(255, 49, 128, 225); // #3180E1
const parkingColor = Color.fromARGB(255, 66, 91, 240); // #425BF0
const chatColor = Color.fromARGB(255, 83, 54, 255); // #5336FF
const dangerColor = Color.fromARGB(255, 224, 58, 91);
const parkingColorBG = Color.fromARGB(45, 138, 115, 255);
const clearColor = Colors.white;
const secondColor = Color.fromARGB(255, 240, 240, 240);
const inactiveTabColor = Color.fromARGB(255, 90, 90, 90); // #5A5A5A
const dangerButtonBG = Color.fromARGB(25, 241, 89, 128); // #F15980 0.1
const inputBG = Color.fromARGB(255, 245, 245, 245); //#F5F5F5

ThemeData appTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      color: clearColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: 'bold',
        fontSize: 18,
        color: Color(0xFF121212),
      ),
    ),
    scaffoldBackgroundColor: clearColor,
    fontFamily: 'regular',
  );
}

ButtonStyle appButton() {
  return ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
    elevation: 0,
    backgroundColor: appColor,
    foregroundColor: Colors.white,
    minimumSize: const Size.fromHeight(56),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
}
