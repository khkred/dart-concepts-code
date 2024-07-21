class Logger {
  // This is a private constructor
  Logger._internal();

  // This is a static instance
  static Logger _instance = Logger._internal();

  factory Logger() {
    return _instance;
  }

  void log(String item) {
    print("Log: $item");
  }
}

void main() {
  final logger1 = Logger();
  final logger2 = Logger();

  logger1.log('Harish');

  print(logger1 == logger2);
}
