import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class sebhaTab extends StatefulWidget {
   sebhaTab({super.key});

  @override
  State<sebhaTab> createState() => _sebhaTabState();
}

class _sebhaTabState extends State<sebhaTab> {
   int counter=0;
   int index=0;

  List<String>tsbeh=["الحمدلله","لا اله الا الله","سبحان الله"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          InkWell(
            onTap: () {
              azkar();
            },
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/headsebha.png",
                      width: 70,
                      height: 105,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 75),
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/sebha.png",
                      width: 232,
                      height: 234,
                    ),
                  ),
                ),

              ],
            ),
          ),

              SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "إذاعة القرآن الكريم",
                style: GoogleFonts.elMessiri(
                    fontSize: 25, fontWeight: FontWeight.w600),
              )
            ],
          ),
              SizedBox(height: 20,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Container(
              height: 81,
              width: 69,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xFFB7935F),
              ),
              child: Center(child: Text(
                counter.toString(),
                textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),)),
            )
          ]),
              SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFB7935F),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                  child: Text(
                    tsbeh[index],

                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 25,color: Colors.white),
                  ))
            ],
          ),
        ]),
      ),
    );
  }

  azkar(){
    if(counter==30){
      counter=0;
      if(index<tsbeh.length-1){
        index++;
      }else{
        index=0;
      }
    }else{
      counter++;
    }
    setState(() {

    });

  }
}
