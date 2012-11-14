part of WidgetBuilder;

class SnippetModel {
  num width;
  num height;

  String script() {
    return "width: $width height: $height";
  }

  SnippetModel(this.width, this.height);
}
