import 'package:bitcoin_ticker/networking.dart';
import 'dart:io' show stdout, stdin;
import 'dart:async';

class RunApp {
  Networking networking = Networking(
      url: 'https://apiv2.bitcoinaverage.com/indices/global/ticker/BTCUSD');

  dynamic run() async {
    dynamic request = await networking.getRequest();
    if (request != null) {
      stdout.write(request['open']['hour']);
    } else {
      print('Failed');
    }
  }

  void runApp() {
    stdout.write('Enter Minutes to Repeate : ');
    int minutes = int.parse(stdin.readLineSync());
    stdout.write('Processing');
    
    Timer.periodic(new Duration(minutes: minutes), (ticker) async {
      stdout.writeln(' ');
      stdout.writeln(' ');
      stdout.writeln('============');
      stdout.writeln('Time Is ${DateTime.now().hour}:${DateTime.now().minute}');
      stdout.writeln('============');
      stdout.write('1 Bitcoin =  ');
      await run();
      stdout.write('\$\n');
    });
  }
}
