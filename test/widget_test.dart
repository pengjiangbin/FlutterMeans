

import 'dart:isolate';

void main() async {
  var receivePort = ReceivePort();
  await Isolate.spawn(echo, receivePort.sendPort);
  var sendPort = await receivePort.first;
  var msg = await sendReceive(sendPort, 'foo');
  print('receive $msg');
  msg = await sendReceive(sendPort, 'bar');
  print('receive $msg');
}

sendReceive(SendPort port, String msg) {
  ReceivePort response = ReceivePort();
  port.send([msg, response.sendPort]);
  return response.first;
}

echo(SendPort sendPort) async {
  var port = ReceivePort();
  sendPort.send(port.sendPort);
  await for (var msg in port) {
    var data = msg[0];
    SendPort replyTo = msg[1];
    replyTo.send(data);
    if (data == 'bar') {
      port.close();
    }
  }
}
