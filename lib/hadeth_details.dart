import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/Hadethmodel.dart';



class Hadeth_Details extends StatelessWidget {
  static const String routeName = "HadethDetails";

  const Hadeth_Details({super.key});

  @override
  Widget build(BuildContext context) {
var model =ModalRoute.of(context)!.settings.arguments as HadethModel;
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

          title: Text("${model.title}", style:
              GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w600),),),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height*.6,
           padding: EdgeInsets.symmetric(vertical: 16,horizontal: 8),
            alignment: Alignment.center,
            margin: EdgeInsets.all(18),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)
            ),
            child: ListView.builder(itemBuilder: (context, index) {
              return Text(model.content[index],textAlign: TextAlign.center,style: GoogleFonts.elMessiri(fontSize: 20,letterSpacing: 1.2));
            },
            itemCount: model.content.length,
            ),
          ),
        ),

      ),
    );
  }
}
