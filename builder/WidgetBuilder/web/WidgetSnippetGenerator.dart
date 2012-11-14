part of WidgetBuilder;

class WidgetSnippetGenerator {
  String snippetBase = '<div data-portal="project" data-project="SomeProject" data-height="{{height}}" data-width="{{width}}"></div>';

  String createSnippet(int height, int width) {
    return this.snippetBase
        .replaceAll('{{height}}', height.toString())
        .replaceAll('{{width}}', width.toString());
  }
}