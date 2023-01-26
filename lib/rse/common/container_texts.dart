import 'package:flutter/material.dart';
import 'package:order_detail_screen/rse/constant/texts.dart';

class ContainerTexts extends StatelessWidget {
  const ContainerTexts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 7,
      width: MediaQuery.of(context).size.width / 1,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [BoxShadow(color: Color(0x1A000000), blurRadius: 10)],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      AppStrings.Contenu,
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        color: Color(0xFF000000),
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      AppStrings.Grocery,
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        color: Color(0xFF000000),
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 110,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      AppStrings.Nombredarticles,
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        color: Color(0xFF000000),
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      AppStrings.lb22,
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        color: Color(0xFF000000),
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Color(0xFF000000),
            ),
            Row(
              children: [
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      AppStrings.Nombredarticles,
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        color: Color(0xFF000000),
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      AppStrings.Pleasepossible,
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        color: Color(0xFF000000),
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
