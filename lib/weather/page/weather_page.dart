import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc/search/search_page.dart';
import 'package:weather_bloc/settings/settings_page.dart';
import 'package:weather_bloc/theme/theme_cubit.dart';
import 'package:weather_bloc/weather/bloc/weather_bloc.dart';
import 'package:weather_repository/weather_repository.dart';

import '../weather.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // create: (context) => WeatherBloc(context.read<WeatherRepository>()),
      create: (context) => WeatherBloc(context.read<WeatherRepository>()),
      child: WeatherView(),
    );
  }
}

class WeatherView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Weather'), actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            Navigator.of(context).push(
              SettingsPage.route(context.read<WeatherBloc>()),
            );
          },
        )
      ]),
      body: Center(
        child: BlocConsumer<WeatherBloc, WeatherState>(
          listener: (context, state) {
            if (state is WeatherStateLoaded) {
              context.read<ThemeCubit>().updateTheme(state.weather);
            }
          },
          builder: (context, state) {
            return state.when(
                initial: (_) => const WeatherEmpty(),
                loading: (_) => const WeatherLoading(),
                loaded: (temperatureUnits, weather) => WeatherPopulated(
                      weather: weather,
                      units: temperatureUnits,
                      onRefresh: () async {
                        context
                            .read<WeatherBloc>()
                            .add(WeatherRefreshWeather());

                        await context
                            .read<WeatherBloc>()
                            .stream
                            .firstWhere((element) => true);
                      },
                    ),
                failed: (_) => const WeatherError());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search),
        onPressed: () async {
          final city = await Navigator.of(context).push(SearchPage.route());
          context.read<WeatherBloc>().add(WeatherFetchWeather(city));
        },
      ),
    );
  }
}
