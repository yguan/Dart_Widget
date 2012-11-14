part of WidgetBuilder;

class SnippetModel {
  num width;
  num height;

  String script() {
    return _snippetGenerator.createSnippet(width, height);
  }

  SnippetModel(this._snippetGenerator);

  WidgetSnippetGenerator _snippetGenerator;
}
