import 'dart:convert';

import 'package:http/http.dart' as http;
import 'user.dart';
import 'post.dart';

void main(List<String> arguments) async {
  // Create a Stopwatch instance
  final stopwatch = Stopwatch()..start();

  final userAndPostsList = Future.wait([getUsersFromAPI(), getPostsFromAPI()]);

  // await getUsersFromAPI();

  // await getPostsFromAPI();

  // Stop the stopwatch
  stopwatch.stop();

  // Print the execution time in milliseconds
  print('Execution time: ${stopwatch.elapsedMilliseconds}ms');
}

Future<List<User>> getUsersFromAPI() async {
  final apiResponse =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

  List usersJsonList = jsonDecode(apiResponse.body);

  return usersJsonList.map((jsonUser) => User.fromJson(jsonUser)).toList();
}

Future<List<Post>> getPostsFromAPI() async {
  final apiResponse =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  List postsJsonList = jsonDecode(apiResponse.body);

  return postsJsonList.map((jsonPost) => Post.fromJSON(jsonPost)).toList();
}
