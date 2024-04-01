import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class themeBottomSheet extends StatelessWidget {
  themeBottomSheet({super.key});
  static String langCode="en";


  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
              onTap: () {
               provider.changeLanguage("en");
              },
              child: Text(
                AppLocalizations.of(context)!.dark,
                style: GoogleFonts.elMessiri(
                    fontSize: 30, color:provider.languageCode=="en"
                    ? MyThemeData.primaryColor:MyThemeData.BlackColor),
              ),
            ),
            if(provider.languageCode=="en")...[
              Icon(Icons.done, size: 35, color:  MyThemeData.primaryColor)

            ]
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
              onTap: () {
                provider.changeLanguage("ar");

              },
              child: Text(
                AppLocalizations.of(context)!.light,
                style: GoogleFonts.elMessiri(
                    fontSize: 30, color:provider.languageCode=="ar"? MyThemeData.primaryColor:MyThemeData.BlackColor),
              ),
            ),
            if(provider.languageCode=="ar")...[
              Icon(Icons.done, size: 35, color:  MyThemeData.primaryColor)

            ]
          ]),
        ],
      ),
    );
  }
}
