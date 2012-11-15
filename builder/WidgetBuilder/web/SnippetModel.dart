part of WidgetBuilder;

class SnippetModel {
  num width = 0;
  num height = 0;

  String script() {
    return _snippetGenerator.createSnippet(width, height);
  }

  SnippetModel(this._snippetGenerator);

  WidgetSnippetGenerator _snippetGenerator;
}
