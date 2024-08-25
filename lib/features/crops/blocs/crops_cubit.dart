import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:harvest_hero/features/crops/data/models/crop_model.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'crops_cubit.freezed.dart';

part 'crops_cubit.g.dart';

//ignore_for_file: invalid_annotation_target
@freezed
class CropsState with _$CropsState {
  const factory CropsState({
    @Default([]) List<CropModel> crops,
    @Default(false) bool isLoading,
    String? quantityUnit,
  }) = _CropsState;

  factory CropsState.fromJson(Map<String, dynamic> json) =>
      _$CropsStateFromJson(json);
}

class CropsCubit extends Cubit<CropsState> {
  CropsCubit() : super(const CropsState());

  FormGroup get cropsForm => FormGroup({
        'name': FormControl<String>(
          validators: [Validators.required],
        ),
        'quantity': FormControl<double>(
          validators: [
            Validators.required,
            Validators.min(1),
          ],
        ),
        'price': FormControl<double>(
          validators: [
            Validators.required,
            Validators.min(1),
          ],
        ),
        'cropSowedOn': FormControl<DateTime>(
          validators: [Validators.required],
        ),
        'expectedHarvestDate': FormControl<DateTime>(
          validators: [Validators.required],
        ),
      });

  void updateQuantityUnit(String value) {
    emit(state.copyWith(quantityUnit: value));
  }

  void loadCropsForUser() {
    emit(
      state.copyWith(isLoading: true),
    );
    FirebaseFirestore.instance
        .collection('user_crops')
        .doc('6A0f579gbjji')
        .collection('crops')
        .get()
        .then((value) {
      final cropList = value.docs;
      final crops =
          cropList.map((doc) => CropModel.fromJson(doc.data())).toList();
      emit(
        state.copyWith(
          isLoading: false,
          crops: crops,
        ),
      );
    });
  }

  Future<void> addCrop(CropModel crop) async {
    await FirebaseFirestore.instance
        .collection('user_crops')
        .doc('6A0f579gbjji')
        .collection('crops')
        .add(crop.toJson());
    loadCropsForUser();
  }
}
