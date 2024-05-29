extension StringExtensions on String {
  String capitalize() {
    if (this.isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + this.substring(1);
  }

  /**
   * 1. this: Refers to the instance of the String class on which the method isPalindrome is called. In the context of an extension, this represents the object that the extension method is operating on.
   * 
   * 2. replaceAll(RegExp(r'\W+'), ''): This part uses the replaceAll method of the String class to replace all occurrences of a pattern (specified by a regular expression) with an empty string ('').
   * - RegExp(r'\W+') is a regular expression.
   * - r'\W+' is a raw string that represents the regular expression \W+.
   * - \W matches any non-word character (anything that is not a letter, digit, or underscore).
   * - + means one or more occurrences of the preceding element.
   * - So, \W+ matches one or more non-word characters.
   * - Therefore, replaceAll(RegExp(r'\W+'), '') removes all non-word characters from the string.
   * 
   * 3. toLowerCase(): Converts the resulting string (after removing non-word characters) to lowercase. This ensures that the palindrome check is case-insensitive.
   */
  bool isPalindrome() {
    if (this.isEmpty) {
      return true;
    }

    String sanitized = this.replaceAll(RegExp(r'\W+'), '').toLowerCase();
    return sanitized == sanitized.split('').reversed.join('');
  }
}

void main() {
  String name = "harish";
  print(name.capitalize());
  print(name.isPalindrome());
}
