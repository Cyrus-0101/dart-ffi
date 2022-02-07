import 'dart:ffi';

void main(List<String> args) {
  /// Open the Dynamic Library containing the function.
  final dylib = DynamicLibrary.open('math_');

  /// Look up the function providing the C and Dart Types.
  final add = dylib.lookupFunction<Int32 Function(Int32, Int32),
      int Function(int, int)>('add');

  final result = add(40, 40);

  print(result);
}
