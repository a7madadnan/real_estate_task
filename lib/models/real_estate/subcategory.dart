import 'package:freezed_annotation/freezed_annotation.dart';

part 'subcategory.freezed.dart';
part 'subcategory.g.dart';

@freezed
class Subcategory with _$Subcategory {
  factory Subcategory({
    String? id,
    String? name,
  }) = _Subcategory;

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
}
