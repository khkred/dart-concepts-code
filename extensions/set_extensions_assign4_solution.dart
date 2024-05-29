extension SetExtensions<T> on Set<T> {
  Set<T> unionAll(List<Set<T>> sets) {
    Set<T> resultSet = this;

    for (var set in sets) {
      resultSet = resultSet.union(set);
    }

    return resultSet;
  }
}

void main() {
  Set<int> set1 = {1, 2, 3};
  Set<int> set2 = {3, 4, 5};
  Set<int> set3 = {5, 6, 7};

  Set<int> resultSet = set1.unionAll([set2, set3]);

  print(resultSet);
}
