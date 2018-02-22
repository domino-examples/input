import 'dart:html' as html;
import 'package:domino/domino.dart';
import 'package:domino/html_view.dart';
import 'package:domino/node_helpers.dart';
import 'package:domino/setters.dart';

void main() {
  String data = '';
  registerHtmlView(
      html.querySelector('#output'),
      (_) => div(content: [
            new Element('input', set: [
              attr('type', 'text'),
              on('keypress', (Event e) {
                data = (e.domElement as html.InputElement).value;
              })
            ]),
            div(content: 'You have typed: $data'),
          ]));
}
