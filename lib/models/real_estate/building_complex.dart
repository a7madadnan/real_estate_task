// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import '../district.dart';

part 'building_complex.freezed.dart';
part 'building_complex.g.dart';

@freezed
class BuildingComplex with _$BuildingComplex {
  factory BuildingComplex({
    String? buildingComplexId,
    String? image,
    String? commNameAr,
    String? commNameEn,
    double? lng,
    double? lat,
    District? district,
  }) = _BuildingComplex;

  factory BuildingComplex.fromJson(Map<String, dynamic> json) =>
      _$BuildingComplexFromJson(json);
}
