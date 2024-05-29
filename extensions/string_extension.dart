extension StringExtensions on String {
  String capitalize() {
    if (this.isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + this.substring(1);
  }
}

void main() {
  String name = "harish";
  print(name.capitalize());
}
