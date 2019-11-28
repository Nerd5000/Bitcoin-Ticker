import 'package:bitcoin_ticker/run.dart';
import 'dart:io'show stdin,stdout;


main(List<String> arguments) {
  RunApp run = RunApp();

  stdout.write('Enter Minutes to Repeate : ');
  var minutes = stdin.readLineSync();
  run.runApp(int.parse(minutes));
  
}
