extension StringExtensions on String {
  String reverse() {
    return this.split('').reversed.join('');
  }

  String capitalizeEachWord() {
    return this.split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1);
    }).join(' ');
  }
}

void main() {
  final greeting = "Hi How are you doing";

  final revGreeting = greeting.reverse().capitalizeEachWord();

  print(revGreeting);
}
