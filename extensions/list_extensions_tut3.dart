extension ListExtensions on List<int> {
  List<int> doubleEach() {
    for (int j in this) {
      j = j * 2;
    }

    return this;
  }

  int sum() {
    int total = 0;

    for (int value in this) {
      total += value;
    }

    return total;
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  int result = numbers.doubleEach().sum();

  print(result);
}
