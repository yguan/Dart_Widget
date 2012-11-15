import 'package:synth/synth.dart';

main () {
  route('GET', '/', (req, res)
    => res.write('Hello, World!'));

  route('GET', '/widget-embedder', (req, res) {
    res.write('''
        (function() {
          var portalElement = \$('[data-portal="project"]');
          var project = portalElement.attr('data-project');
        
          portalElement.append("<h1>Hello</h1>"); 
        })();
      ''');
    });

  start(port: 8080);
  print('Listening on port 8080');
}