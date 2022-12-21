import 'package:riverpod_infinite_scroll/riverpod_infinite_scroll.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate_task/constants.dart';
import 'package:real_estate_task/models/real_estate/real_estate.dart';
import 'package:real_estate_task/services/networking.dart';

Future<List<RealEstate>> getRealEstates(int pageNumber, int pageSize) async {
  List<RealEstate> realEstates = [];

  await networkHelper
      .getHttp(ApiDocument.realEstateApi, pageNumber, pageSize)
      .then((value) {
    var data = value.data;
    for (var n in data["results"]) {
      RealEstate re = RealEstate.fromJson(n);
      realEstates.add(re);
    }
  });
  return realEstates;
}

class RealEstateNotifier extends PagedNotifier<int, RealEstate> {
  RealEstateNotifier()
      : super(
          load: (page, limit) => getRealEstates(page, limit),
          nextPageKeyBuilder: NextPageKeyBuilderDefault.mysqlPagination,
        );
}

final realEstateProvider =
    StateNotifierProvider<RealEstateNotifier, PagedState<int, RealEstate>>(
        (_) => RealEstateNotifier());
