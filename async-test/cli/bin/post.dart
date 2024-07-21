class Post {
  final int id;
  final String title;
  Post({required this.id, required this.title});

  factory Post.fromJSON(Map<String, dynamic> jsonPost) =>
      Post(id: jsonPost['id'], title: jsonPost['title']);
}
