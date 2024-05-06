Future<String> getUserBalance() async {
  return Future.delayed(
      Duration(seconds: 2), () => throw Exception('Cannot get balance'));
}

Future<void> fetchUserBalance() async {
  try {
    final userOrder = await getUserBalance();
    print(userOrder);
  } catch (e) {
    print('Error: $e');
  }
}

void main() async {
  print('Fetching the user balance...');
  await fetchUserBalance();
}
