import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/hadeth_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../models/Hadethmodel.dart';

class AhadethTab extends StatefulWidget {
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> ahadethData = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethData.isEmpty) {
      loadHadethFile();
    }
    return Column(children: [
      Image.asset(
        "assets/images/ahadeth.png",
        width: 312,
        height: 219,
      ),
      Divider(
        thickness: 3,
        color: Color(0xffB7935F),
      ),
      Text(
        AppLocalizations.of(context)!.ahadeth,
        textAlign: TextAlign.center,
        style: GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w600),
      ),
      Divider(
        thickness: 3,
        color: Color(0xffB7935F),
      ),
      Expanded(
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              color: Color(0xffB7935F),
            );
          },
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, Hadeth_Details.routeName,
                arguments:ahadethData[index] );
              },
              child: Text(
                ahadethData[index].title,
                textAlign: TextAlign.center,
                style: GoogleFonts.elMessiri(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            );
          },
          itemCount: ahadethData.length,
        ),
      )
    ]);
  }

  loadHadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((hadethFile) {
      List<String> ahadeth = hadethFile.split("#");
      for (int i = 0; i < ahadeth.length; i++) {
        String hadeth = ahadeth[i];
        List<String> hadethLines = hadeth.trim().split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> hadethContent = hadethLines;
        ahadethData.add(HadethModel(title: title, content: hadethContent));
      }
      setState(() {});
    });
  }
}
