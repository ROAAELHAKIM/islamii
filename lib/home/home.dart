import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/tabs/ahadethTab.dart';
import 'package:islami/home/tabs/quranTab.dart';
import 'package:islami/home/tabs/radioTab.dart';
import 'package:islami/home/tabs/sebhaTab.dart';
import 'package:islami/home/tabs/settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  static const String routeName = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
              AppLocalizations.of(context)!.appName,
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },

            backgroundColor: Color(0xffB7935F),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.amber,
            showSelectedLabels: false,
            iconSize: 25,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quranic.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ahadethic.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebhaic.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radioic.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: ""),
            ]),
        body:tabs[index],
      ),
    );
  }
  List <Widget> tabs=[
    QuranTab(),
    AhadethTab(),
    sebhaTab(),
    radioTab(),
    settings(),
  ];
}
