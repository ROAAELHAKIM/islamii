import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class radioTab extends StatelessWidget {
  const radioTab({super.key});
  static const String routeName = "radiotab";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Image.asset("assets/images/radio.png"),
        SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("إذاعة القرآن الكريم",style: GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.w600),)
        ],),
            SizedBox(height: 70,),

            Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
          Icon(Icons.skip_previous_sharp,color: Color(0xFFB7935F),size: 40,),
              SizedBox(width: 20,),
          Icon(Icons.play_arrow_rounded,color: Color(0xFFB7935F),size: 70,),
              SizedBox(width: 20,),
          Icon(Icons.skip_next_sharp,color: Color(0xFFB7935F),size: 40,),


        ]),
      ]),


    );
  }
}
