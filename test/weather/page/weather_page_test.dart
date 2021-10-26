// import 'dart:async';
//
// import 'package:bloc_test/bloc_test.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:weather_bloc/search/search_page.dart';
// import 'package:weather_bloc/settings/settings_page.dart';
// import 'package:weather_bloc/theme/theme_cubit.dart';
// import 'package:weather_bloc/weather/page/weather_page.dart';
// import 'package:weather_bloc/weather/weather.dart';
// import 'package:weather_repository/weather_repository.dart' hide Weather;
//
// import '../../helpers/hydrated_bloc.dart';
//
// class MockWeatherRepository extends Mock implements WeatherRepository {}
//
// class FakeColor extends Fake implements Color {}
//
// class MockThemeCubit extends MockCubit<Color> implements ThemeCubit {}
//
// class FakeWeatherState extends Fake implements WeatherStateCubit {}
//
// class MockWeatherCubit extends MockCubit<WeatherStateCubit>
//     implements WeatherCubit {}
//
// void main() {
//   setUpAll(() {
//     initHydratedBloc();
//     registerFallbackValue<Color>(FakeColor());
//     registerFallbackValue<WeatherStateCubit>(FakeWeatherState());
//   });
//
//   group('WeatherPage', () {
//     late WeatherRepository weatherRepository;
//
//     setUp(() {
//       weatherRepository = MockWeatherRepository();
//     });
//
//     testWidgets('renders WeatherView', (tester) async {
//       await tester.pumpWidget(
//         RepositoryProvider.value(
//           value: weatherRepository,
//           child: MaterialApp(home: WeatherPage()),
//         ),
//       );
//
//       expect(find.byType(WeatherView), findsOneWidget);
//     });
//   });
//
//   group('WeatherView', () {
//     final weather = Weather(
//         temperature: Temperature(value: 4.2),
//         condition: WeatherCondition.cloudy,
//         lastUpdated: DateTime(2020),
//         location: 'London');
//
//     late ThemeCubit themeCubit;
//     late WeatherCubit weatherCubit;
//
//     setUp(() {
//       themeCubit = MockThemeCubit();
//       weatherCubit = MockWeatherCubit();
//     });
//
//     testWidgets('renders WeatherEmpty for WeatherStatus.initial',
//         (tester) async {
//       when(() => weatherCubit.state).thenReturn(WeatherStateCubit());
//       await tester.pumpWidget(
//         BlocProvider.value(
//           value: weatherCubit,
//           child: MaterialApp(home: WeatherView()),
//         ),
//       );
//       expect(find.byType(WeatherEmpty), findsOneWidget);
//     });
//
//     testWidgets('renders WeatherLoading for WeatherStatus.loading',
//         (tester) async {
//       when(() => weatherCubit.state).thenReturn(WeatherStateCubit(
//         status: WeatherStatus.loading,
//       ));
//
//       await tester.pumpWidget(
//         BlocProvider.value(
//           value: weatherCubit,
//           child: MaterialApp(home: WeatherView()),
//         ),
//       );
//       expect(find.byType(WeatherLoading), findsOneWidget);
//     });
//
//     testWidgets('renders WeatherPopulate for WeatherStatus.success',
//         (tester) async {
//       when(() => weatherCubit.state).thenReturn(WeatherStateCubit(
//         status: WeatherStatus.success,
//         weather: weather,
//       ));
//
//       await tester.pumpWidget(
//         BlocProvider.value(
//           value: weatherCubit,
//           child: MaterialApp(home: WeatherView()),
//         ),
//       );
//       expect(find.byType(WeatherPopulated), findsOneWidget);
//     });
//
//     testWidgets('renders WeatherError for WeatherStatus.failure',
//         (tester) async {
//       when(() => weatherCubit.state).thenReturn(WeatherStateCubit(
//         status: WeatherStatus.failure,
//       ));
//
//       await tester.pumpWidget(
//         BlocProvider.value(
//           value: weatherCubit,
//           child: MaterialApp(home: WeatherView()),
//         ),
//       );
//       expect(find.byType(WeatherError), findsOneWidget);
//     });
//
//     testWidgets('state is cached', (tester) async {
//       when<dynamic>(() => hydratedStorage.read('WeatherCubit')).thenReturn(
//         WeatherStateCubit(
//           status: WeatherStatus.success,
//           weather: weather,
//           temperatureUnits: TemperatureUnits.fahrenheit,
//         ).toJson(),
//       );
//       await tester.pumpWidget(
//         BlocProvider.value(
//           value: WeatherCubit(MockWeatherRepository()),
//           child: MaterialApp(home: WeatherView()),
//         ),
//       );
//       expect(find.byType(WeatherPopulated), findsOneWidget);
//     });
//
//     testWidgets('navigates to SettingsPage when settings icon is tapped',
//         (tester) async {
//       when(() => weatherCubit.state).thenReturn(WeatherStateCubit());
//       await tester.pumpWidget(
//         BlocProvider.value(
//           value: weatherCubit,
//           child: MaterialApp(home: WeatherView()),
//         ),
//       );
//       await tester.tap(find.byType(IconButton));
//       await tester.pumpAndSettle();
//       expect(find.byType(SettingsPage), findsOneWidget);
//     });
//
//     testWidgets('navigates to SearchPage when search icon is tapped',
//         (tester) async {
//       when(() => weatherCubit.state).thenReturn(WeatherStateCubit());
//       await tester.pumpWidget(
//         BlocProvider.value(
//           value: weatherCubit,
//           child: MaterialApp(home: WeatherView()),
//         ),
//       );
//       await tester.tap(find.byType(FloatingActionButton));
//       await tester.pumpAndSettle();
//       expect(find.byType(SearchPage), findsOneWidget);
//     });
//
//     testWidgets('calls updateTheme when weather changes', (tester) async {
//       whenListen(
//         weatherCubit,
//         Stream.fromIterable([
//           WeatherStateCubit(),
//           WeatherStateCubit(status: WeatherStatus.success, weather: weather),
//         ]),
//       );
//
//       when(() => weatherCubit.state).thenReturn(
//         WeatherStateCubit(
//           status: WeatherStatus.success,
//           weather: weather,
//         ),
//       );
//
//       await tester.pumpWidget(
//         MultiBlocProvider(
//           providers: [
//             BlocProvider.value(value: themeCubit),
//             BlocProvider.value(value: weatherCubit),
//           ],
//           child: MaterialApp(
//             home: WeatherView(),
//           ),
//         ),
//       );
//
//       verify(() => themeCubit.updateTheme(weather)).called(1);
//     });
//
//     testWidgets('triggers refreshWeather on pull to refresh', (tester) async {
//       when(() => weatherCubit.state).thenReturn(
//         WeatherStateCubit(
//           status: WeatherStatus.success,
//           weather: weather,
//         ),
//       );
//
//       when(() => weatherCubit.refreshWeather()).thenAnswer((_) async {});
//
//       await tester.pumpWidget(
//         BlocProvider.value(
//           value: weatherCubit,
//           child: MaterialApp(home: WeatherView()),
//         ),
//       );
//
//       await tester.fling(
//         find.text('London'),
//         const Offset(0.0, 500.0),
//         1000.0,
//       );
//       await tester.pumpAndSettle();
//
//       verify(() => weatherCubit.refreshWeather()).called(1);
//     });
//
//     testWidgets('triggers fetch on search pop', (tester) async {
//       when(() => weatherCubit.state).thenReturn(WeatherStateCubit());
//       when(() => weatherCubit.fetchWeather(any())).thenAnswer((_) async {});
//       await tester.pumpWidget(
//         BlocProvider.value(
//           value: weatherCubit,
//           child: MaterialApp(home: WeatherView()),
//         ),
//       );
//
//       await tester.tap(find.byType(FloatingActionButton));
//       await tester.pumpAndSettle();
//       await tester.enterText(find.byType(TextField), 'Chicago');
//       await tester.tap(find.byKey(const Key('searchPage_search_iconButton')));
//       await tester.pumpAndSettle();
//       verify(() => weatherCubit.fetchWeather('Chicago')).called(1);
//     });
//   });
// }
