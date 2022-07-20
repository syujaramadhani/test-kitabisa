import 'package:intl/intl.dart';

class AllFunctions {
  static convertDate(
    v, {
    dateDefault = false,
    dateOnly = false,
    nonDatenHours = false,
    dateMonthOnly = false,
    yearMonthDate = false,
  }) {
    DateTime date = DateTime.parse(v);
    var formattedDate = DateFormat('dd MMM yyyy, kk:mm').format(date);
    if (dateDefault) {
      formattedDate = DateFormat('dd-MM-yyyy').format(date);
    }
    if (dateOnly) {
      formattedDate = DateFormat('dd MMM yyyy').format(date);
    }
    if (dateMonthOnly) {
      formattedDate = DateFormat('dd MMM, kk:mm').format(date);
    }
    if (nonDatenHours) {
      formattedDate = DateFormat('MMM yyyy').format(date);
    }
    if (yearMonthDate) {
      formattedDate = DateFormat('yyyy-MM-dd').format(date);
    }
    return formattedDate;
  }

  static toNumber(value) {
    return value.replaceAll(".", "");
  }

  static removeCurrencyFormat(currency) {
    return currency.replaceAll(RegExp(r"(\D+)"), "");
  }
}
