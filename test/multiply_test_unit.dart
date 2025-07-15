import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

int multiply(int a, int b) => a * b;

String myPunchLine(String name, String profession) {
  return 'How $name can trend you online? cause i am a $profession';
}

void main() {
  test('Test the multiply function', () {
    expect(multiply(4, 5), 20);
    expect(myPunchLine("Sachin", "Digital Expert"),
        "How Sachin can trend you online? cause i am a Digital Expert");
  });
}
