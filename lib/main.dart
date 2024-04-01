import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/hadeth_details.dart';
import 'package:islami/home/home.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/sura_details.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void main() {
  runApp(ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);

    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.languageCode),
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName ,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        suraDetails.routeName:(context) => suraDetails(),
        Hadeth_Details.routeName:(context) => Hadeth_Details(),

        // Screen3.routeName:(context) => Screen3(),





      },

    );
  }
}


