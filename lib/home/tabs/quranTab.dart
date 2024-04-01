import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/suraModel.dart';
import 'package:islami/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class QuranTab extends StatelessWidget {
  QuranTab({super.key});

  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/images/rr.png",
          width: 205,
          height: 227,
        ),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Text(
          AppLocalizations.of(context)!.suraName,
          textAlign: TextAlign.center,
          style:
              GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
              color: Color(0xffB7935F),
              endIndent: 40,
              indent: 40,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, suraDetails.routeName,
                  arguments: SuraModel(index: index, name: suraName[index])
                  );
                },
                child: Text(
                  suraName[index],
                  style: GoogleFonts.elMessiri(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              );
            },
            itemCount: suraName.length,
          ),
        )
      ],
    );
  }
}
