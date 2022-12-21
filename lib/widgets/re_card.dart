import 'package:flutter/material.dart';
import 'package:real_estate_task/models/real_estate/real_estate.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../constants.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ReCard extends StatelessWidget {
  const ReCard({
    super.key,
    required this.realEstate,
  });
  final RealEstate realEstate;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: CachedNetworkImageProvider(realEstate.image!),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white54,
                    ),
                    child: Text(
                      realEstate.offerType!.getName(context),
                      style: kYTextStyle2,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white54,
                    ),
                    child: Text(
                      realEstate.user!.role!.name!.getName(context),
                      style: kYTextStyle2,
                    ),
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 20,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Color(0xff035050),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white54,
                        ),
                        child: Text(
                          realEstate.city!.name!,
                          style: kYTextStyle2,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 20,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.money,
                        color: Colors.white,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white54,
                        ),
                        child: Text(
                          realEstate.price.toString(),
                          style: kYTextStyle2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  AppLocalizations.of(context)!.bedroom,
                  style: kYTextStyle2,
                ),
                Text(
                  '${realEstate.nofBedrooms ?? 0}',
                  style: kYTextStyle3,
                ),
                Text(
                  AppLocalizations.of(context)!.lvingroom,
                  style: kYTextStyle2,
                ),
                Text(
                  '${realEstate.nofLivingRooms ?? 0}',
                  style: kYTextStyle3,
                ),
                Text(
                  AppLocalizations.of(context)!.bathroom,
                  style: kYTextStyle2,
                ),
                Text(
                  '${realEstate.nofBathRooms ?? 0}',
                  style: kYTextStyle3,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  realEstate.title!,
                  style: kYTextStyle,
                  textAlign: TextAlign.center,
                ),
                Text(
                  AppLocalizations.of(context)!.age,
                  style: kYTextStyle3,
                ),
                Text(
                  '${realEstate.age ?? 0}',
                  style: kYTextStyle,
                ),
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
          ),
        ],
      ),
    );
  }
}
