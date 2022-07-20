import 'package:intl/intl.dart';

String dateFormatter(DateTime date) {
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final String formatted = formatter.format(date);
  return formatted;
}

String dateFormatterDefault(DateTime date) {
  final DateFormat formatter = DateFormat('dd MMM yyyy');
  final String formatted = formatter.format(date);
  return formatted;
}

String dateFormatterDefault2(DateTime date) {
  final DateFormat formatter = DateFormat('dd-MM-yyyy');
  final String formatted = formatter.format(date);
  return formatted;
}

String dateFormatterDefault3(DateTime date) {
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final String formatted = formatter.format(date);
  return formatted;
}

String dateFormatterWithHours(DateTime date) {
  final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
  final String formatted = formatter.format(date);
  return formatted;
}

String dateFormatterCasual(DateTime date) {
  final DateFormat formatter = DateFormat('dd MMM . HH:mm');
  final String formatted = formatter.format(date);
  return formatted;
}

String dateFormatterDay(DateTime date) {
  final DateFormat formatter = DateFormat('EEEE, dd MMM ');
  final String formatted = formatter.format(date);
  return formatted;
}

String dateFormatterHours(DateTime date) {
  final DateFormat formatter = DateFormat('HH.mm');
  final String formatted = formatter.format(date);
  return formatted;
}
