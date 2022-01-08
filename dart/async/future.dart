Future<void> main() async {
  String x = await Future.delayed(Duration(seconds: 2), () {
    return "I am from future";
  });

  print(x.length);
}
