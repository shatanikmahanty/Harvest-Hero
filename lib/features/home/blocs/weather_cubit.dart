import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:harvest_hero/features/home/data/repositories/weather_repo.dart';
import 'package:weather/weather.dart';

part 'weather_cubit.freezed.dart';

part 'weather_cubit.g.dart';

//ignore_for_file: invalid_annotation_target
@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    @JsonKey(
      includeFromJson: false,
      includeToJson: false,
    )
    Weather? weather,
    @Default(false) bool isLoading,
  }) = _WeatherState;

  factory WeatherState.fromJson(Map<String, dynamic> json) =>
      _$WeatherStateFromJson(json);
}

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit({required this.weatherRepository})
      : super(
          const WeatherState(),
        );

  final WeatherRepo weatherRepository;

  void updateWeather(double lat, double long) async {
    try {
      emit(state.copyWith(
        isLoading: true,
      ));
      final weather = await weatherRepository.getWeather(lat, long);
      emit(state.copyWith(
        weather: weather,
        isLoading: false,
      ));
    } catch (e) {}
  }
}
