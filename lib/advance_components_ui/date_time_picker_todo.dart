import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//Date & Time and Picker are important in mobile app
//as these feature are commonly being to use in many commercail mobile application
//such as flight booking app, hotel booking app, ticket movie app , travel app and many other

class DateTimePickerTodo extends StatefulWidget {
  const DateTimePickerTodo({super.key});

  @override
  State<DateTimePickerTodo> createState() => _DateTimePickerTodoState();
}

class _DateTimePickerTodoState extends State<DateTimePickerTodo> {
  //declare member
  TimeOfDay currentTime = TimeOfDay.now();
  DateTime currentDate = DateTime.now();
  bool _isTimeSelected = false;
  bool _isDateSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter DatePicker Demo',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: Icon(Icons.timer),
              title: (_isTimeSelected)
                  ? Text('${currentTime.format(context).toString()}')
                  : Text('Select time'),
              trailing: Icon(Icons.edit),
              onTap: () {
                _selectTimePicker(context);
              },
            ),
          ),
          SizedBox(height: 2),
          Card(
            child: ListTile(
              leading: Icon(Icons.calendar_month),
              title: (_isDateSelected)
                  ? Text(DateFormat('EEEE, dd MMM yyyy').format(currentDate))
                  : Text('Select Date'),
              trailing: Icon(Icons.edit),
              onTap: () {
                _selectDatePicker(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  //create select time function
  Future<void> _selectTimePicker(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      //initilize value of time
      initialTime: currentTime,

      //and can inputType mode of time
      initialEntryMode: TimePickerEntryMode.dial,
      helpText: 'choose your time',
      confirmText: 'choose now',
      cancelText: 'later',
    );

    //check condition for update pickedTime
    if (pickedTime != null && pickedTime != currentTime) {
      setState(() {
        currentTime = pickedTime;
        _isTimeSelected = true;
      });
    }
  }

  //create select date function
  Future<void> _selectDatePicker(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      //show data start from and end from
      firstDate: DateTime(2000, 1, 1),
      lastDate: DateTime(2040, 12, 30),

      //initilize value of Data
      initialDate: currentDate,
      helpText: 'choose your date',
      confirmText: 'choose now',
      cancelText: 'later',
    );

    //check selected date and update dateTime
    if (pickedDate != null && pickedDate != currentDate) {
      setState(() {
        currentDate = pickedDate;
        _isDateSelected = true;
      });
    }
  }
}

/*
DateFormat('dd/MM/yyyy')        // 12/02/2026
DateFormat('yyyy-MM-dd')        // 2026-02-12
DateFormat('dd MMM yyyy')       // 12 Feb 2026
DateFormat('EEEE, dd MMM yyyy') // Thursday, 12 Feb 2026
DateFormat('MMM dd, yyyy')      // Feb 12, 2026
 */
