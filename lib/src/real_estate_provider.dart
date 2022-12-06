
import 'package:riverpod_infinite_scroll/riverpod_infinite_scroll.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled2/constants.dart';
import 'package:untitled2/models/real_estate/real_estate.dart';
import 'package:untitled2/services/networking.dart';

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
          //load is a required method of PagedNotifier
          load: (page, limit) => getRealEstates(page, limit),

          //nextPageKeyBuilder is a required method of PagedNotifier
          nextPageKeyBuilder: NextPageKeyBuilderDefault.mysqlPagination,
        );
}

//create a global provider as you would normally in riverpod:
final realEstateProvider =
    StateNotifierProvider<RealEstateNotifier, PagedState<int, RealEstate>>(
        (_) => RealEstateNotifier());
