extension MapExtensions<K, V> on Map<K, V> {
  Map<V, K> invert() {
    return this.map((key, value) => MapEntry(value, key));
  }
}

void main() {
  Map<String, int> original = {'a': 1, 'b': 2, 'c': 3};

  Map<int, String> inverted = original.invert();

  print(inverted);
}
