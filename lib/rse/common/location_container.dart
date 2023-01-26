import 'package:flutter/material.dart';
import 'package:order_detail_screen/rse/constant/images.dart';

import '../constant/texts.dart';

class LocationContainer extends StatelessWidget {
  const LocationContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 9,
      width: MediaQuery.of(context).size.width / 1,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [BoxShadow(color: Color(0x1A000000), blurRadius: 10)],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Image.asset(
                      AppImages.red,
                      height: 15,
                      width: 15,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          AppStrings.Adressedelivraison,
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            color: Color(0xFF000000),
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          AppStrings.HeenaCris,
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            color: Color(0xFF000000),
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          AppStrings.HarrisoKearny07032,
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            color: Color(0xFF000000),
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90, top: 27),
                    child: Column(
                      children: [
                        Image.asset(
                          AppImages.location2,
                          height: 30,
                          width: 30,
                        ),
                      ],
                    ),
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
