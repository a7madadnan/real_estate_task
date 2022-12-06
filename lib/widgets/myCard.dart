
import 'package:flutter/material.dart';
import 'package:untitled2/models/real_estate/real_estate.dart';

import '../constants.dart';

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
                          image: NetworkImage(realEstate.image!),
                          fit: BoxFit.fitWidth)),
                ),
                Positioned(
                  top: 130,
                  left: 20,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      Text(
                        realEstate.city!.name!,
                        style: const TextStyle(color: Colors.white),
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
                      Text(
                        realEstate.price.toString(),
                        style: const TextStyle(color: Colors.white),
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
                Text('${realEstate.nofBedrooms} :عدد غرف النوم',
                    style: kYTextStyle2),
                Text('${realEstate.nofLivingRooms} :عدد غرف المعيشة',
                    style: kYTextStyle2),
                Text('${realEstate.nofBathRooms} :عدد الحمامات',
                    style: kYTextStyle2),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(realEstate.title!, style: kYTextStyle),
                Text(realEstate.age.toString(), style: kYTextStyle),
                Text(realEstate.area.toString(), style: kYTextStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
