import 'package:intl/intl.dart';

class TFormatter {

  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd/MM/yyyy').format(date);
  }
}