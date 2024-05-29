extension ListExtensions on List<num> {
  double average() {
    if (this.isEmpty) return 0;
    return this.reduce((a, b) => a + b) / this.length;
  }

  double median() {
    if (this.isEmpty) return 0;
    List<num> sortedList = List.from(this)..sort();
    int middle = sortedList.length ~/ 2;
    if (sortedList.length % 2 == 1) {
      return sortedList[middle].toDouble();
    } else {
      return ((sortedList[middle - 1] + sortedList[middle]) / 2).toDouble();
    }
  }
}

void main() {
  List<num> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print("Average: ${numbers.average()}"); // Output: Average: 5.0
  print("Median: ${numbers.median()}"); // Output: Median: 5.0
}
