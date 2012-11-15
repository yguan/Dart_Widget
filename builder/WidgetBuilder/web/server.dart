import 'package:synth/synth.dart';

main () {
  route('GET', '/', (req, res)
    => res.write('Hello, World!'));

  route('GET', '/widget-embedder', (req, res) {
    res.write('''
        (function() {
          var portalElement = \$('[data-portal="project"]');
          var height = portalElement.attr('data-height');
          var width = portalElement.attr('data-width');
        
          \$.get('http://jreynolds-w7e.hq.daptiv.com/rootApi/hackday/sharedprojectitem?viewid=2B1BDB19-9B13-4B77-9288-1886120EAEC2',
              function(data){
                var stringthing = '<tr><th colspan="2">' + data.Project.Title + '</th><tr>';
                for(prop in data.ProjectStatus ) { stringthing += '<tr><td>' + prop + ':</td><td> ' + data.ProjectStatus[prop] + '</td></tr>'; };
                portalElement.append("<div style='overflow:auto;border: 1px solid black; width:"+ width + "px; height:" + height + "px;'><table>" + stringthing + "</table></div>"); 
            });
        })();
      ''');
    });

  start(port: 8080);
  print('Listening on port 8080');
}