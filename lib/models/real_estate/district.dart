
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_task/models/real_estate/city.dart';

part 'district.freezed.dart';
part 'district.g.dart';

@freezed
class District with _$District {
  factory District({
    String? id,
    String? arName,
    String? enName,
    City? city,
  }) = _BuildingComplex;

  factory District.fromJson(Map<String, dynamic> json) =>
      _$DistrictFromJson(json);
}
