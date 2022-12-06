import 'package:freezed_annotation/freezed_annotation.dart';

import 'district.dart';

part 'building_complex.freezed.dart';
part 'building_complex.g.dart';

@freezed
class BuildingComplex with _$BuildingComplex {
  factory BuildingComplex({
    dynamic buildingComplexId,
    dynamic image,
    dynamic commNameAr,
    dynamic commNameEn,
    dynamic lng,
    dynamic lat,
    District? district,
  }) = _BuildingComplex;

  factory BuildingComplex.fromJson(Map<String, dynamic> json) =>
      _$BuildingComplexFromJson(json);
}
