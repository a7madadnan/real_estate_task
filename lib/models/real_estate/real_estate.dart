import 'package:freezed_annotation/freezed_annotation.dart';

import 'building_complex.dart';
import 'category.dart';
import 'city.dart';
import 'district.dart';
import 'subcategory.dart';
import 'user.dart';

part 'real_estate.freezed.dart';
part 'real_estate.g.dart';

@freezed
class RealEstate with _$RealEstate {
  factory RealEstate({
    String? id,
    String? title,
    dynamic realestatePlanSubscription,
    dynamic area,
    dynamic age,
    dynamic nofLivingRooms,
    dynamic nofBedrooms,
    dynamic nofBathRooms,
    dynamic parkingCapacity,
    String? offerType,
    int? price,
    dynamic lat,
    dynamic lng,
    DateTime? createdAt,
    User? user,
    District? district,
    City? city,
    Category? category,
    Subcategory? subcategory,
    bool? isFavorite,
    bool? isSeen,
    bool? isSold,
    bool? myRealestate,
    dynamic buildingComplexId,
    BuildingComplex? buildingComplex,
    String? avenueName,
    String? nearestPoint,
    dynamic expiresAt,
    dynamic imagesCount,
    String? image,
  }) = _RealEstate;

  factory RealEstate.fromJson(Map<String, dynamic> json) =>
      _$RealEstateFromJson(json);
}
