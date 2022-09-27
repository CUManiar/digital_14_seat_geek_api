// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:digital_14/models/search_model.dart';
import 'package:digital_14/services/event_service.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:digital_14/main.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  group('getEventDetails', () {
    test('returns details string when http response is successful', () async {
      // Mock the API call to return a json response with http status 200 Ok //

      // Check whether getData function returns
      // number trivia which will be a String
      expect(await getEvents("ind"), isA<SearchModel>());
    });

  });
}
