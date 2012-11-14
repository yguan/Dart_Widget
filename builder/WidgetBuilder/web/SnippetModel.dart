part of WidgetBuilder;

class SnippetModel {
  num width;
  num height;
  num count;
  String script() {
    return "winner $count";
  }
  SnippetModel(this.width, this.height, this.count);
}
