
void main() async {
  track1();
  String? task2Result = await track2();
  track3(task2Result!);
}

void track1() {
  String result = 'Track 1 data';
  print('Track 1 is completed');
}

Future<String?> track2() async {
  Duration threeSeconds = const Duration(seconds: 3);
  String? result;
  await Future.delayed(
    threeSeconds,
    () {
      result = 'Track 2 data';
      print('Track 2 is completed');
    },
  );
  return result;
}

void track3(String inputData) {
  String result = 'Track 3 data';
  print('Track 3 is completed with $inputData');
}
