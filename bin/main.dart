import 'package:bitcoin_ticker/run.dart';
import 'dart:io' show stdin, stdout;

main(List<String> arguments) {
  RunApp run = RunApp();

  stdout.write('Enter Minutes to Repeate : ');
  int minutes = int.parse(stdin.readLineSync());
  run.runApp(minutes);
}
