import 'dart:convert';
import 'dart:html';

void main() {
  makeRequest();
}

Future<void> makeRequest() async {
  const path = 'examples.json';
  final httpRequest = HttpRequest();
  httpRequest
    ..open('GET', path)
    ..onLoadEnd.listen((e) => requestComplete(httpRequest))
    ..send('');
}

void requestComplete(HttpRequest request) {
  DivElement examples = querySelector('#examples');
  switch (request.status) {
    case 200:
      for (var obj in json.decode(request.responseText)) {
        AnchorElement link = AnchorElement(href: '${obj['folder']}/index.html');
        link.text = obj['title'];
        link.className = 'list-group-item list-group-item-action';
        examples.children.add(link);
      }
      removeSpinner();
      return;
    default:
      final error = DivElement()
        ..text = 'Request failed, status=${request.status}'
        ..className = 'alert alert-danger';
      examples.children.add(error);
      removeSpinner();
  }
}

void removeSpinner() {
  DivElement spinner = querySelector('#spinner');
  spinner.remove();
}
