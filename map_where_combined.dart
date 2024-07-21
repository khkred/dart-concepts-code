// Convert a list of strings to a list of doubles and filter out null values:
void main() {
  List<String> inputs = ['1.24', '2.35', '4.56', 'abc'];

  List<double?> numbers =
      inputs.map(double.tryParse).where((n) => n != null).toList();

  print(numbers);
}
