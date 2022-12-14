import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:riverpod_infinite_scroll/riverpod_infinite_scroll.dart';
import 'package:real_estate_task/models/real_estate/real_estate.dart';
import 'package:real_estate_task/widgets/re_card.dart';
import 'package:real_estate_task/src/real_estate_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RealEstatePage extends StatefulWidget {
  const RealEstatePage({super.key});
  @override
  State<RealEstatePage> createState() => _RealEstatePageState();
}

class _RealEstatePageState extends State<RealEstatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.realEstate),
      ),
      body: RiverPagedBuilder<int, RealEstate>(
        firstPageKey: 0,
        limit: 25,
        pullToRefresh: true,
        provider: realEstateProvider,
        itemBuilder: (context, item, index) => ReCard(
          realEstate: item,
        ),
        pagedBuilder: (controller, builder) => PagedListView(
            pagingController: controller, builderDelegate: builder),
      ),
    );
  }
}
