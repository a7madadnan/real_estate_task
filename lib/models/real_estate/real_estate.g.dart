// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'real_estate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RealEstate _$$_RealEstateFromJson(Map<String, dynamic> json) =>
    _$_RealEstate(
      id: json['id'] as String?,
      title: json['title'] as String?,
      realestatePlanSubscription: json['realestatePlanSubscription'],
      area: json['area'],
      age: json['age'],
      nofLivingRooms: json['nofLivingRooms'],
      nofBedrooms: json['nofBedrooms'],
      nofBathRooms: json['nofBathRooms'],
      parkingCapacity: json['parkingCapacity'],
      offerType: json['offerType'] as String?,
      price: json['price'] as int?,
      lat: json['lat'],
      lng: json['lng'],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      district: json['district'] == null
          ? null
          : District.fromJson(json['district'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      subcategory: json['subcategory'] == null
          ? null
          : Subcategory.fromJson(json['subcategory'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool?,
      isSeen: json['isSeen'] as bool?,
      isSold: json['isSold'] as bool?,
      myRealestate: json['myRealestate'] as bool?,
      buildingComplexId: json['buildingComplexId'],
      buildingComplex: json['buildingComplex'] == null
          ? null
          : BuildingComplex.fromJson(
              json['buildingComplex'] as Map<String, dynamic>),
      avenueName: json['avenueName'] as String?,
      nearestPoint: json['nearestPoint'] as String?,
      expiresAt: json['expiresAt'],
      imagesCount: json['imagesCount'],
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
      'offerType': instance.offerType,
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
