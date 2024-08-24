import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'crops_cubit.freezed.dart';

part 'crops_cubit.g.dart';

//ignore_for_file: invalid_annotation_target
@freezed
class CropsState with _$CropsState {
  const factory CropsState({
    // @JsonKey(
    //   includeFromJson: false,
    //   includeToJson: false,
    // )
    // @Default([]) List<Crops> Crops,
    @Default(false) bool isLoading,
    String? quantityUnit,
  }) = _CropsState;

  factory CropsState.fromJson(Map<String, dynamic> json) =>
      _$CropsStateFromJson(json);
}

class CropsCubit extends Cubit<CropsState> {
  CropsCubit() : super(const CropsState());

  FormGroup get cropsForm => FormGroup({
        'name': FormControl<String>(value: ''),
        'quantity': FormControl<double>(),
        'price': FormControl<double>(),
        'cropSowedOn': FormControl<DateTime>(),
        'expectedHarvestDate': FormControl<DateTime>(),
      });

  void updateQuantityUnit(String value) {
    emit(state.copyWith(quantityUnit: value));
  }
}
