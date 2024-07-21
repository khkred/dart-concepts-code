class User {
  final int id;
  final String name;

  User({required this.id, required this.name});

  factory User.fromJson(Map<String, dynamic> jsonUser) =>
      User(id: jsonUser['id'], name: jsonUser['name']);

  @override
  String toString() {
    return 'User id: $id, name: $name';
  }
}
