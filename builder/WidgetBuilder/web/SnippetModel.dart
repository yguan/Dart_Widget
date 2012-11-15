part of WidgetBuilder;

class IDimension {
  num width;
  num height;
}

class SnippetModel implements IDimension {
  num width = 0;
  num height = 0;

  String script() {
    return _snippetGenerator.createSnippet(width, height);
  }

  SnippetModel(this._snippetGenerator);

  WidgetSnippetGenerator _snippetGenerator;
}
