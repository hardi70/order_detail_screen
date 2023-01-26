import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:order_detail_screen/model/call_location_container_model.dart';
import 'package:order_detail_screen/rse/common/container_images.dart';
import 'package:order_detail_screen/rse/common/container_texts.dart';
import 'package:order_detail_screen/rse/constant/texts.dart';

import '../data/container_data.dart';
import '../rse/common/call_location_container.dart';
import '../rse/constant/images.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  UserData? userData;

  @override
  void initState() {
    userData = userDataFromMap(jsonEncode(callLocationContainerData));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(AppImages.ArrowLeft),
                        const SizedBox(width: 10),
                        const Text(
                          "#8737843",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            color: Color(0xFF000000),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 29,
                            width: MediaQuery.of(context).size.width / 3,
                            decoration: BoxDecoration(
                              color: const Color(0x4DFF4800),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: const Center(
                              child: Text(
                                "Commande en cours",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Color(0xFF000000),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ContainerImages(),
                    const SizedBox(height: 15),
                    const ContainerTexts(),
                    const SizedBox(height: 15),
                    const CallLocationContainer(
                      image: AppImages.gerin,
                      text: AppStrings.Lieuderamassage,
                      secondText: AppStrings.MiRanchitoRestaurant,
                    ),
                    const SizedBox(height: 15),
                    const CallLocationContainer(
                      image: AppImages.red,
                      text: AppStrings.Adressedelivraison,
                      secondText: AppStrings.HeenaCris,
                    ),
                    const SizedBox(height: 15),
                    const ContainerImages(),
                    const SizedBox(height: 15),
                    const ContainerTexts(),
                    const SizedBox(height: 15),
                    Container(
                      height: 450,
                      child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 15),
                        itemCount: userData!.callLocationData!.length,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => CallLocationContainer(
                          image: userData!.callLocationData![index].image,
                          text: userData!.callLocationData![index].text,
                          secondText:
                              userData!.callLocationData![index].secondText,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF4800),
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: const Center(
                    child: Text(
                      "Suivre votre commande",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
