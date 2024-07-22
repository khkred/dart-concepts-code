import 'dart:isolate';

void computeIntensive(SendPort sendPort) {
  // Perform intensive computation
  int result = 0;
  for (int i = 0; i < 1000000; i++) {
    result += i;
  }
  sendPort.send(result);
}

Future<int> performComputation() async {
  final receivePort = ReceivePort();

  await Isolate.spawn(computeIntensive, receivePort.sendPort);

  return await receivePort.first;
}

void main() async {
  int totalSum = await performComputation();
  print("Total Sum is: $totalSum");
}
