import 'package:synth/synth.dart';

main () {
  route('GET', '/', (req, res)
    => res.write('Hello, World!'));

  start(port: 8080);
  print('Listening on port 8080');
}