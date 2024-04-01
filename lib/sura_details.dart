import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'models/suraModel.dart';

class suraDetails extends StatefulWidget {
  static const String routeName = "suraDetails";

   suraDetails({super.key});

  @override
  State<suraDetails> createState() => _suraDetailsState();
}

class _suraDetailsState extends State<suraDetails> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var suraModel = ModalRoute.of(context)!.settings.arguments as SuraModel;
    Future.delayed(Duration(seconds: 5),() {
      readSuraFile(suraModel.index);

    },);
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
            suraModel.name,
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      body: verses.isEmpty?
      Center(child: CircularProgressIndicator()): Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)
        ),
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            thickness: 1,
            endIndent: 50,
            indent: 50,
            color: Color(0xffB7935F),

          ),
          itemBuilder: (context, index) {
            return Text(

             " ${verses[index]}(${index+1})",
              textAlign: TextAlign.center
              ,style: GoogleFonts.elMessiri(fontSize: 20,letterSpacing: 1.2),);
          },
                  itemCount: verses.length,
          ),
      ),
      ),
    );
  }

  void readSuraFile(int index)async{
    String sura = await rootBundle.loadString("assets/files/${index+1}.txt");
    // print(sura);
    List<String> suraLines =sura.split("\n");
    verses=suraLines;
    setState(() {

    });
  }
}
