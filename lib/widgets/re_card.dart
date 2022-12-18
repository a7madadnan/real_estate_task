// ignore: file_names
import 'package:flutter/material.dart';
import 'package:untitled2/models/real_estate/real_estate.dart';

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
                          fit: BoxFit.cover)),
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
                      realEstate.offerType?.getName(context) ?? '',
                      style: kYTextStyle2,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
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
                        child:
                            Text(realEstate.city!.name!, style: kYTextStyle2),
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
                        child: Text(realEstate.price.toString(),
                            style: kYTextStyle2),
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
                const Text('غرف النوم', style: kYTextStyle2),
                Text(
                  '${realEstate.nofBedrooms ?? 0}',
                  style: kYTextStyle3,
                ),
                const Text('غرف المعيشة', style: kYTextStyle2),
                Text(
                  '${realEstate.nofLivingRooms ?? 0}',
                  style: kYTextStyle3,
                ),
                const Text('الحمامات', style: kYTextStyle2),
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
                const Text('العمر', style: kYTextStyle3),
                Text('${realEstate.age ?? 0}', style: kYTextStyle),
                const Text('المساحة', style: kYTextStyle3),
                Text('${realEstate.area ?? 0}', style: kYTextStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}