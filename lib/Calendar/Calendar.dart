import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_new_app/Colors-Themes/HexColor.dart';
import 'package:table_calendar/table_calendar.dart';

import 'CalendarBuilders.dart';

void main(){
  runApp(Home());
}

class Home extends StatelessWidget {

    @override
    Widget build(BuildContext context) {

      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("yyey"),),
          body:CalendarWidget()
        )
      );
    }

}

class CalendarWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _CalendarState();
  }
}

  class _CalendarState extends State<CalendarWidget> {


      CalendarController _controller;

      @override
      void dispose() {
        _controller.dispose();
        super.dispose();
      }

      @override
      void initState() {
         super.initState();
        _controller = new CalendarController();
      }

      void _selected() {
        print("cool");
      }

      @override
      Widget build(BuildContext context) {

        return Card(
            elevation: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child:  TableCalendar(
                headerStyle: HeaderStyle(
                  titleTextStyle: GoogleFonts.lora(
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                  ),
                  centerHeaderTitle: true,
                  formatButtonVisible: false,
                ),
                weekendDays: [],
                calendarController: _controller,
                availableCalendarFormats: const {CalendarFormat.month: 'Monthly' },
                initialCalendarFormat: CalendarFormat.month,
                onUnavailableDaySelected: _selected,
                builders: builders(),

              ),
            )
        );
      }

  }

