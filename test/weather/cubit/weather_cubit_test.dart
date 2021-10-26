// import 'package:bloc_test/bloc_test.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:weather_bloc/weather/cubit/weather_cubit.dart';
// import 'package:weather_bloc/weather/weather.dart';
// import 'package:weather_repository/weather_repository.dart'
//     as weather_repository;
//
// import '../../helpers/hydrated_bloc.dart';
//
// const weatherLocation = 'London';
// const weatherCondition = weather_repository.WeatherCondition.rainy;
// const weatherTemperature = 9.8;
//
// class MockWeatherRepository extends Mock
//     implements weather_repository.WeatherRepository {}
//
// class MockWeather extends Mock implements weather_repository.Weather {}
//
// void main() {
//   group('WeatherCubit', () {
//     late weather_repository.Weather weather;
//     late weather_repository.WeatherRepository weatherRepository;
//
//     setUpAll(initHydratedBloc);
//
//     setUp(() {
//       weather = MockWeather();
//       weatherRepository = MockWeatherRepository();
//
//       when(() => weather.condition).thenReturn(weatherCondition);
//       when(() => weather.location).thenReturn(weatherLocation);
//       when(() => weather.temperature).thenReturn(weatherTemperature);
//       when(() => weatherRepository.getWeather(any()))
//           .thenAnswer((_) async => weather);
//     });
//
//     test('initial state is correct', () {
//       final weatherCubit = WeatherCubit(weatherRepository);
//       expect(weatherCubit.state, WeatherStateCubit());
//     });
//
//     group('toJson/fromJson', () {
//       test('work properly', () {
//         final weatherCubit = WeatherCubit(weatherRepository);
//         expect(
//           weatherCubit.fromJson(weatherCubit.toJson(weatherCubit.state)),
//           weatherCubit.state,
//         );
//       });
//     });
//
//     group('fetchWeather', () {
//       blocTest<WeatherCubit, WeatherStateCubit>(
//         'emits nothing when city is null',
//         build: () => WeatherCubit(weatherRepository),
//         act: (cubit) => cubit.fetchWeather(null),
//         expect: () => <WeatherStateCubit>[],
//       );
//
//       blocTest<WeatherCubit, WeatherStateCubit>(
//         'emits nothing when city is empty',
//         build: () => WeatherCubit(weatherRepository),
//         act: (cubit) => cubit.fetchWeather(''),
//         expect: () => <WeatherStateCubit>[],
//       );
//
//       blocTest<WeatherCubit, WeatherStateCubit>(
//         'calls getWeather with correct city',
//         build: () => WeatherCubit(weatherRepository),
//         act: (cubit) => cubit.fetchWeather(weatherLocation),
//         verify: (_) {
//           verify(() => weatherRepository.getWeather(weatherLocation)).called(1);
//         },
//       );
//
//       blocTest<WeatherCubit, WeatherStateCubit>(
//         'emits [loading, failure] when getWeather throws',
//         setUp: () {
//           when(() => weatherRepository.getWeather(any()))
//               .thenThrow(Exception('oops'));
//         },
//         build: () => WeatherCubit(weatherRepository),
//         act: (cubit) => cubit.fetchWeather(weatherLocation),
//         expect: () => <WeatherStateCubit>[
//           WeatherStateCubit(status: WeatherStatus.loading),
//           WeatherStateCubit(status: WeatherStatus.failure),
//         ],
//       );
//
//       blocTest<WeatherCubit, WeatherStateCubit>(
//         'emits [loading, success] when getWeather returns (celsius)',
//         build: () => WeatherCubit(weatherRepository),
//         act: (cubit) => cubit.fetchWeather(weatherLocation),
//         expect: () => <dynamic>[
//           WeatherStateCubit(status: WeatherStatus.loading),
//           isA<WeatherStateCubit>()
//               .having((w) => w.status, 'status', WeatherStatus.success)
//               .having(
//                 (w) => w.weather,
//                 'weather',
//                 isA<Weather>()
//                     .having((w) => w.lastUpdated, 'lastUpdated', isNotNull)
//                     .having((w) => w.condition, 'condition', weatherCondition)
//                     .having(
//                       (w) => w.temperature,
//                       'temperature',
//                       Temperature(
//                         value: weatherTemperature,
//                       ),
//                     )
//                     .having((w) => w.location, 'location', weatherLocation),
//               ),
//         ],
//       );
//
//       blocTest<WeatherCubit, WeatherStateCubit>(
//         'emits [loading, success] when getWeather returns (fahrenheit)',
//         build: () => WeatherCubit(weatherRepository),
//         seed: () =>
//             WeatherStateCubit(temperatureUnits: TemperatureUnits.fahrenheit),
//         act: (cubit) => cubit.fetchWeather(weatherLocation),
//         expect: () => <dynamic>[
//           WeatherStateCubit(
//             status: WeatherStatus.loading,
//             temperatureUnits: TemperatureUnits.fahrenheit,
//           ),
//           isA<WeatherStateCubit>()
//               .having((w) => w.status, 'status', WeatherStatus.success)
//               .having(
//                 (w) => w.weather,
//                 'weather',
//                 isA<Weather>()
//                     .having((w) => w.lastUpdated, 'lastUpdated', isNotNull)
//                     .having((w) => w.condition, 'condition', weatherCondition)
//                     .having(
//                       (w) => w.temperature,
//                       'temperature',
//                       Temperature(
//                         value: weatherTemperature.toFahrenheit(),
//                       ),
//                     )
//                     .having((w) => w.location, 'location', weatherLocation),
//               ),
//         ],
//       );
//     });
//
//     group('refreshWeather', () {
//       blocTest<WeatherCubit, WeatherStateCubit>(
//         'emits nothing when status is not success',
//         build: () => WeatherCubit(weatherRepository),
//         act: (cubit) => cubit.refreshWeather(),
//         expect: () => <WeatherStateCubit>[],
//         verify: (_) {
//           verifyNever(() => weatherRepository.getWeather(any()));
//         },
//       );
//
//       blocTest<WeatherCubit, WeatherStateCubit>(
//         'emits nothing when location is null',
//         build: () => WeatherCubit(weatherRepository),
//         seed: () => WeatherStateCubit(status: WeatherStatus.success),
//         act: (cubit) => cubit.refreshWeather(),
//         expect: () => <WeatherStateCubit>[],
//         verify: (_) {
//           verifyNever(() => weatherRepository.getWeather(any()));
//         },
//       );
//
//       blocTest<WeatherCubit, WeatherStateCubit>(
//         'invokes getWeather with correct location',
//         build: () => WeatherCubit(weatherRepository),
//         seed: () => WeatherStateCubit(
//           status: WeatherStatus.success,
//           weather: Weather(
//             condition: weatherCondition,
//             lastUpdated: DateTime(2020),
//             location: weatherLocation,
//             temperature: Temperature(value: weatherTemperature),
//           ),
//         ),
//         act: (cubit) => cubit.refreshWeather(),
//         verify: (_) {
//           verify(() => weatherRepository.getWeather(weatherLocation)).called(1);
//         },
//       );
//
//       blocTest<WeatherCubit, WeatherStateCubit>(
//         'emits nothing when exception is thrown',
//         setUp: () {
//           when(() => weatherRepository.getWeather(any()))
//               .thenThrow(Exception('oops'));
//         },
//         build: () => WeatherCubit(weatherRepository),
//         seed: () => WeatherStateCubit(
//           status: WeatherStatus.success,
//           weather: Weather(
//             condition: weatherCondition,
//             lastUpdated: DateTime(2020),
//             location: weatherLocation,
//             temperature: Temperature(value: weatherTemperature),
//           ),
//         ),
//         act: (cubit) => cubit.refreshWeather(),
//         expect: () => <WeatherStateCubit>[],
//       );
//
//       blocTest<WeatherCubit, WeatherStateCubit>(
//         'emits updated weather (celsius)',
//         build: () => WeatherCubit(weatherRepository),
//         seed: () => WeatherStateCubit(
//           status: WeatherStatus.success,
//           weather: Weather(
//             condition: weatherCondition,
//             lastUpdated: DateTime(2020),
//             location: weatherLocation,
//             temperature: Temperature(value: weatherTemperature),
//           ),
//         ),
//         act: (cubit) => cubit.refreshWeather(),
//         expect: () => <Matcher>[
//           isA<WeatherStateCubit>()
//               .having((w) => w.status, 'status', WeatherStatus.success)
//               .having(
//                 (w) => w.weather,
//                 'weather',
//                 isA<Weather>()
//                     .having((w) => w.lastUpdated, 'lastUpdated', isNotNull)
//                     .having((w) => w.condition, 'condition', weatherCondition)
//                     .having(
//                       (w) => w.temperature,
//                       'temperature',
//                       Temperature(value: weatherTemperature),
//                     )
//                     .having((w) => w.location, 'location', weatherLocation),
//               ),
//         ],
//       );
//
//       blocTest<WeatherCubit, WeatherStateCubit>(
//         'emits updated weather (fahrenheit)',
//         build: () => WeatherCubit(weatherRepository),
//         seed: () => WeatherStateCubit(
//           status: WeatherStatus.success,
//           temperatureUnits: TemperatureUnits.fahrenheit,
//           weather: Weather(
//             condition: weatherCondition,
//             lastUpdated: DateTime(2020),
//             location: weatherLocation,
//             temperature: Temperature(value: weatherTemperature),
//           ),
//         ),
//         act: (cubit) => cubit.refreshWeather(),
//         expect: () => <Matcher>[
//           isA<WeatherStateCubit>()
//               .having((w) => w.status, 'status', WeatherStatus.success)
//               .having(
//                 (w) => w.weather,
//                 'weather',
//                 isA<Weather>()
//                     .having((w) => w.lastUpdated, 'lastUpdated', isNotNull)
//                     .having((w) => w.condition, 'condition', weatherCondition)
//                     .having(
//                       (w) => w.temperature,
//                       'temperature',
//                       Temperature(value: weatherTemperature.toFahrenheit()),
//                     )
//                     .having((w) => w.location, 'location', weatherLocation),
//               ),
//         ],
//       );
//     });
//
//     group('toggleUnits', () {
//       blocTest<WeatherCubit, WeatherStateCubit>(
//         'emits updated units when status is not success',
//         build: () => WeatherCubit(weatherRepository),
//         act: (cubit) => cubit.toggleUnits(),
//         expect: () => <WeatherStateCubit>[
//           WeatherStateCubit(temperatureUnits: TemperatureUnits.fahrenheit)
//         ],
//       );
//
//       blocTest<WeatherCubit, WeatherStateCubit>(
//         'emits updated units and temperature '
//         'when status is success (celsius)',
//         build: () => WeatherCubit(weatherRepository),
//         seed: () => WeatherStateCubit(
//             status: WeatherStatus.success,
//             temperatureUnits: TemperatureUnits.fahrenheit,
//             weather: Weather(
//               condition: WeatherCondition.rainy,
//               lastUpdated: DateTime(2020),
//               location: weatherLocation,
//               temperature: Temperature(value: weatherTemperature),
//             )),
//         act: (cubit) => cubit.toggleUnits(),
//         expect: () => <WeatherStateCubit>[
//           WeatherStateCubit(
//               status: WeatherStatus.success,
//               temperatureUnits: TemperatureUnits.celsius,
//               weather: Weather(
//                 condition: WeatherCondition.rainy,
//                 lastUpdated: DateTime(2020),
//                 location: weatherLocation,
//                 temperature: Temperature(value: weatherTemperature.toCelsius()),
//               ))
//         ],
//       );
//
//       blocTest<WeatherCubit, WeatherStateCubit>(
//         'emits updated units and temperature '
//         'when status is success (fahrenheit)',
//         build: () => WeatherCubit(weatherRepository),
//         seed: () => WeatherStateCubit(
//             status: WeatherStatus.success,
//             temperatureUnits: TemperatureUnits.celsius,
//             weather: Weather(
//               condition: WeatherCondition.rainy,
//               lastUpdated: DateTime(2020),
//               location: weatherLocation,
//               temperature: Temperature(value: weatherTemperature),
//             )),
//         act: (cubit) => cubit.toggleUnits(),
//         expect: () => <WeatherStateCubit>[
//           WeatherStateCubit(
//               status: WeatherStatus.success,
//               temperatureUnits: TemperatureUnits.fahrenheit,
//               weather: Weather(
//                 condition: WeatherCondition.rainy,
//                 lastUpdated: DateTime(2020),
//                 location: weatherLocation,
//                 temperature:
//                     Temperature(value: weatherTemperature.toFahrenheit()),
//               ))
//         ],
//       );
//     });
//   });
// }
//
// extension on double {
//   double toFahrenheit() => ((this * 9 / 5) + 32);
//
//   double toCelsius() => ((this - 32) * 5 / 9);
// }
