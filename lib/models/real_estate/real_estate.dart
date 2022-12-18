import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'building_complex.dart';
import 'position.dart';
import 'user.dart';

part 'real_estate.freezed.dart';
part 'real_estate.g.dart';

abstract class TypeEnum {
  String getName(BuildContext context);
}

enum OfferType implements TypeEnum {
  @JsonValue('SELL')
  sell,
  @JsonValue('RENT')
  rent,
  unknown;

  @override
  String getName(BuildContext context) {
    switch (this) {
      case sell:
        return "Sell";
      case rent:
        return "Rent";
      case unknown:
        return "";
    }
  }
}

@freezed
class RealEstate with _$RealEstate {
  factory RealEstate({
    String? id,
    String? title,
    String? realestatePlanSubscription,
    int? area,
    int? age,
    int? nofLivingRooms,
    int? nofBedrooms,
    int? nofBathRooms,
    int? parkingCapacity,
    OfferType? offerType,
    int? price,
    double? lat,
    double? lng,
    DateTime? createdAt,
    User? user,
    Position? district,
    Position? city,
    Position? category,
    Position? subcategory,
    bool? isFavorite,
    bool? isSeen,
    bool? isSold,
    bool? myRealestate,
    String? buildingComplexId,
    BuildingComplex? buildingComplex,
    String? avenueName,
    String? nearestPoint,
    String? expiresAt,
    int? imagesCount,
    String? image,
  }) = _RealEstate;

  factory RealEstate.fromJson(Map<String, dynamic> json) =>
      _$RealEstateFromJson(json);
}
