import 'package:json_annotation/json_annotation.dart';
import 'package:meta_weather_api/meta_weather_api.dart';
import 'package:test/test.dart';

void main() {
  group('Location', () {
    group('fromJson', () {
      test('throws CheckedFromJsonException when enum is unknown', () {
        expect(
            () => Location.fromJson(<String, dynamic>{
                  'title': 'mock-title',
                  'location_type': 'Unknown',
                  'latt_long': '-12.32,11.22',
                  'woeid': 32,
                }),
            throwsA(isA<CheckedFromJsonException>()));
      });
    });
  });
}
