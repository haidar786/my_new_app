import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_new_app/Colors-Themes/HexColor.dart';
import 'package:table_calendar/table_calendar.dart';

CalendarBuilders builders() {

  return CalendarBuilders(
    dowWeekdayBuilder: (context, weekday) {
      return Container(
        margin: EdgeInsets.all(5),
        alignment: Alignment.center,
        child: Text(weekday.toString(),
          style: GoogleFonts.nanumGothic(
            fontSize: 12,
            color: HexColour("#CAC0BE")
          )
        ),
      );
    },
    selectedDayBuilder: (context,date, events) =>
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: HexColour("#0C0B0A"),
        ),
        alignment: Alignment.center,
        child: Text(date.day.toString(),
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700
          ),
        ),
      ),
    dayBuilder: (context,date,events) {
      return Container(
        alignment: Alignment.center,
        child: Text(date.day.toString(),
          style: GoogleFonts.lato(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    },
  );
}
