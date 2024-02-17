import 'package:intl/intl.dart';

String dateToString(DateTime dateTime) {
  return DateFormat('dd MMM yyyy HH:mm a').format(DateTime.parse(dateTime));
}
