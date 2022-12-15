// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'real_estate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RealEstate _$$_RealEstateFromJson(Map<String, dynamic> json) =>
    _$_RealEstate(
      id: json['id'] as String?,
      title: json['title'] as String?,
      realestatePlanSubscription: json['realestatePlanSubscription'] as String?,
      area: json['area'] as int?,
      age: json['age'] as int?,
      nofLivingRooms: json['nofLivingRooms'] as int?,
      nofBedrooms: json['nofBedrooms'] as int?,
      nofBathRooms: json['nofBathRooms'] as int?,
      parkingCapacity: json['parkingCapacity'] as int?,
      offerType: $enumDecodeNullable(_$OfferTypeEnumMap, json['offerType']),
      price: json['price'] as int?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      district: json['district'] == null
          ? null
          : Position.fromJson(json['district'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : Position.fromJson(json['city'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : Position.fromJson(json['category'] as Map<String, dynamic>),
      subcategory: json['subcategory'] == null
          ? null
          : Position.fromJson(json['subcategory'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool?,
      isSeen: json['isSeen'] as bool?,
      isSold: json['isSold'] as bool?,
      myRealestate: json['myRealestate'] as bool?,
      buildingComplexId: json['buildingComplexId'] as String?,
      buildingComplex: json['buildingComplex'] == null
          ? null
          : BuildingComplex.fromJson(
              json['buildingComplex'] as Map<String, dynamic>),
      avenueName: json['avenueName'] as String?,
      nearestPoint: json['nearestPoint'] as String?,
      expiresAt: json['expiresAt'] as int?,
      imagesCount: json['imagesCount'] as int?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_RealEstateToJson(_$_RealEstate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'realestatePlanSubscription': instance.realestatePlanSubscription,
      'area': instance.area,
      'age': instance.age,
      'nofLivingRooms': instance.nofLivingRooms,
      'nofBedrooms': instance.nofBedrooms,
      'nofBathRooms': instance.nofBathRooms,
      'parkingCapacity': instance.parkingCapacity,
      'offerType': _$OfferTypeEnumMap[instance.offerType],
      'price': instance.price,
      'lat': instance.lat,
      'lng': instance.lng,
      'createdAt': instance.createdAt?.toIso8601String(),
      'user': instance.user,
      'district': instance.district,
      'city': instance.city,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'isFavorite': instance.isFavorite,
      'isSeen': instance.isSeen,
      'isSold': instance.isSold,
      'myRealestate': instance.myRealestate,
      'buildingComplexId': instance.buildingComplexId,
      'buildingComplex': instance.buildingComplex,
      'avenueName': instance.avenueName,
      'nearestPoint': instance.nearestPoint,
      'expiresAt': instance.expiresAt,
      'imagesCount': instance.imagesCount,
      'image': instance.image,
    };

const _$OfferTypeEnumMap = {
  OfferType.sell: 'SELL',
  OfferType.rent: 'RENT',
  OfferType.unknown: 'unknown',
};
