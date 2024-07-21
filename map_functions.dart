void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  // Convert integers to a list of strings with . at the end of each number

  List<String> numString = numbers.map((number) => "$number .").toList();

  print(numString);

  List<int> doubled = numbers.map((number) => number * 2).toList();

  print(doubled);
}
