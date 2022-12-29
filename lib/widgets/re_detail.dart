import 'package:flutter/material.dart';
import 'package:real_estate_task/models/real_estate/real_estate.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../constants.dart';

class ReDetail extends StatelessWidget {
  const ReDetail({super.key, required this.realEstate});
  final RealEstate realEstate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.realEstate)),
      body: Container(
        color: Color.fromARGB(100, 100, 100, 100),
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(realEstate.image!),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Text(
              realEstate.title!,
              style: kYTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  realEstate.city!.name!,
                  style: kYTextStyle2,
                ),
                Text(
                  realEstate.district!.name!,
                  style: kYTextStyle2,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.userRole,
                      style: kYTextStyle3,
                    ),
                    Text(
                      realEstate.user!.role!.name!.getName(context),
                      style: kYTextStyle2,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.offerType,
                      style: kYTextStyle3,
                    ),
                    Text(
                      realEstate.offerType!.getName(context),
                      style: kYTextStyle2,
                    ),
                  ],
                )
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.price,
                        style: kYTextStyle3,
                      ),
                      Text(
                        '${realEstate.price ?? 0}',
                        style: kYTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.age,
                        style: kYTextStyle3,
                      ),
                      Text(
                        '${realEstate.age ?? 0}',
                        style: kYTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.area,
                        style: kYTextStyle3,
                      ),
                      Text(
                        '${realEstate.area ?? 0}',
                        style: kYTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        AppLocalizations.of(context)!.bedroom,
                        style: kYTextStyle3,
                      ),
                      Text(
                        '${realEstate.nofBedrooms ?? 0}',
                        style: kYTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        AppLocalizations.of(context)!.lvingroom,
                        style: kYTextStyle3,
                      ),
                      Text(
                        '${realEstate.nofLivingRooms ?? 0}',
                        style: kYTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        AppLocalizations.of(context)!.bathroom,
                        style: kYTextStyle3,
                      ),
                      Text(
                        '${realEstate.nofBathRooms ?? 0}',
                        style: kYTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
