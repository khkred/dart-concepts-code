enum FavoriteStatus {
  all,
  favorite,
  notFavorite,
}

void main() {
  final values = FavoriteStatus.values.map((fs) => fs.name).toList();

  print(values);
}
