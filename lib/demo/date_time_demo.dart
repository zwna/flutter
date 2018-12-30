import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {

   DateTime selectedDate = DateTime.now();

   TimeOfDay selectedTime = TimeOfDay(hour: 17, minute: 58);

 Future<void> _selectDate() async {
   final DateTime dateTime = await showDatePicker(context: context, initialDate: selectedDate, firstDate: DateTime(1970), lastDate: DateTime(2100));

   if(dateTime == null) return;
   setState(() {
     selectedDate = dateTime;
   });
  }

   Future<void> _selectTime() async {
    final TimeOfDay timeOfDay = await showTimePicker(context: context, initialTime: selectedTime);

    if(timeOfDay == null) return;

    setState(() {
      selectedTime = timeOfDay;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DateTimeDemo',
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: _selectDate,
                  child: Row(
                    children: <Widget>[
                      Text(DateFormat.yMd().format(selectedDate)),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
                SizedBox(width: 32.0),
                InkWell(
                  onTap: _selectTime,
                  child: Row(
                    children: <Widget>[
                      Text(selectedTime.format(context)),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
