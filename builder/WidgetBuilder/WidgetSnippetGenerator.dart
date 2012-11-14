library WidgetSnippetGenerator;

class WidgetSnippetGenerator {
   
  var widgetEmbbederTag = """ 
  <script src='http://code.jquery.com/jquery-1.8.2.min.js'></script>
  <script>
        (function(d){
         var js, id = 'widget', ref = d.getElementsByTagName('script')[0];
         if (d.getElementById(id)) {return;}
         js = d.createElement('script'); js.id = id; js.async = true;
         js.src = "widget-embedder.js";
         ref.parentNode.insertBefore(js, ref);
         }(document));
   </script>
   """;   
  var snippetBase = '<div data-portal="project" data-project="SomeProject" data-height="{{height}}" data-width="{{width}}"></div>';
  
  CreateSnippet(int height, int width) {
    var divSnippet = this.snippetBase
        .replaceAll('{{height}}', height.toString())
        .replaceAll('{{width}}', width.toString());
    
    return widgetEmbbederTag.concat(divSnippet);
  }
}