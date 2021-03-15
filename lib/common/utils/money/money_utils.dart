import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class MoneyUtils {
  static String rupiah(dynamic value, {String separator = '.', String trailing = ''}) {
    if (value == null) return "-";
    final v = num.parse(value.toString());

    return "Rp " + NumberFormat.decimalPattern("id").format(v);
  }
}

class MoneyCurrencyInputFormatter extends TextInputFormatter {
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    double value = double.parse(newValue.text);

    final formatter = NumberFormat.decimalPattern('id');

    String newText = formatter.format(value);

    return newValue.copyWith(text: newText, selection: TextSelection.collapsed(offset: newText.length));
  }
}
