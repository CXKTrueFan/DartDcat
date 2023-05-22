import 'dart:io';
void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: dcat <file>');
    exit(1);
  }
  final file = File(arguments[0]);
  if (!file.existsSync()) {
    print('Error: file not found');
    exit(1);
  }
  final lines = file.readAsLinesSync();
  for (final line in lines) {
    print(line);
  }
}
