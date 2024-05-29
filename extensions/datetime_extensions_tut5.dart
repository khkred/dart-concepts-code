extension DatetimeExtensions on DateTime {
  bool isWeekend() {
    return this.weekday == DateTime.saturday || this.weekday == DateTime.sunday;
  }

  int daysUntil(DateTime other) {
    return other.difference(this).inDays;
  }
}

void main() {
  DateTime today = DateTime.now();
  DateTime futureDate = today.add(Duration(days: 10));

  print('Is today a Weekend? ${today.isWeekend()}');

  print('Days until $futureDate: ${today.daysUntil(futureDate)}');
}
