import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // Location name for the UI
  String time = ''; // The formatted time string
  String flag; // URL to an asset flag icon
  String url; // Location URL for API endpoint
  bool isDayTime = true;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      // Make the HTTP request
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));

      if (response.statusCode != 200) {
        throw Exception('Failed to load time data');
      }

      Map data = jsonDecode(response.body);

      // Extract datetime and UTC offset
      String datetime = data['datetime'];
      String offset = data['utc_offset']; // e.g. "+01:00", "-03:30"
      String sign = offset.substring(0, 1);
      int hours = int.parse(offset.substring(1, 3));
      int minutes = int.parse(offset.substring(4, 6));

      // Parse and adjust time
      DateTime now = DateTime.parse(datetime);
      Duration offsetDuration = Duration(hours: hours, minutes: minutes);
      now = sign == '+' ? now.add(offsetDuration) : now.subtract(offsetDuration);

      // Set properties
      isDayTime = now.hour >= 6 && now.hour < 18;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('Caught error: $e');
      time = 'Could not get time data';
      isDayTime = true;
    }
  }
}


