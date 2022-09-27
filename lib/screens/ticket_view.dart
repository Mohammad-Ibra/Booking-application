// ignore_for_file: depend_on_referenced_packages

import 'package:booking/utils/app_info_list.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:booking/widgets/thick_container.dart';
import 'package:booking/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColored;

  const TicketView({Key? key, required this.ticket, this.isColored})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> personal = personalInfo;
    final size = AppLayout.getSize(context);
    switch (isColored) {
      case true:
        return SizedBox(
          width: size.width * 0.85,
          height: AppLayout.getHeight(200),
          child: Container(
            margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFF526799),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21),
                      )),
                  padding: EdgeInsets.all(AppLayout.getHeight(16)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            ticket['from']['code'],
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Spacer(),
                          const ThickContainer(),
                          Expanded(
                              child: Stack(children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        ((constraints.constrainWidth() / 6)
                                            .floor()),
                                        (index) => const SizedBox(
                                              height: 1,
                                              width: 3,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.white),
                                              ),
                                            )),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ])),
                          const ThickContainer(),
                          const Spacer(),
                          Text(
                            ticket['to']['code'],
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Gap(AppLayout.getHeight(3)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: AppLayout.getWidtht(100),
                            child: Text(
                              ticket['from']['name'],
                              style: Styles.headLineStyle4
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                          Text(
                            ticket['flying_time'],
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            width: AppLayout.getWidtht(100),
                            child: Text(
                              ticket['to']['name'],
                              textAlign: TextAlign.end,
                              style: Styles.headLineStyle4
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Styles.orangeColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ))),
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(AppLayout.getWidtht(12.0)),
                        child: LayoutBuilder(
                          builder: ((context, constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  (constraints.constrainWidth() / 15).floor(),
                                  (index) => SizedBox(
                                        width: AppLayout.getWidtht(5),
                                        height: AppLayout.getHeight(1),
                                        child: const DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white),
                                        ),
                                      )),
                            );
                          }),
                        ),
                      )),
                      SizedBox(
                        height: AppLayout.getHeight(20),
                        width: AppLayout.getWidtht(10),
                        child: const DecoratedBox(
                            decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Styles.orangeColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21),
                      )),
                  padding: EdgeInsets.only(
                      top: AppLayout.getHeight(10),
                      bottom: AppLayout.getHeight(16),
                      left: AppLayout.getWidtht(16),
                      right: AppLayout.getWidtht(16)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ticket['date'],
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "Date",
                                style: Styles.headLineStyle4
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                ticket['departure_time'],
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "Departure Time",
                                style: Styles.headLineStyle4
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '${ticket['number']}',
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "Number",
                                style: Styles.headLineStyle4
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(5)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      default:
        return Column(
          children: [
            Container(
              width: size.width * 0.88,
              height: AppLayout.getHeight(70),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidtht(10),
                vertical: AppLayout.getHeight(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticket['from']['code'],
                        style:
                            Styles.headLineStyle2.copyWith(color: Colors.black),
                      ),
                      Text(
                        ticket['from']['name'],
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const ThickContainer(
                            color: Colors.blue,
                          ),
                          Gap(AppLayout.getWidtht(10)),
                          Transform.rotate(
                            angle: 1.55,
                            child: const Icon(
                              Icons.local_airport_rounded,
                              color: Colors.blue,
                            ),
                          ),
                          Gap(AppLayout.getWidtht(10)),
                          const ThickContainer(color: Colors.blue),
                        ],
                      ),
                      Text(
                        ticket['flying_time'],
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ticket['to']['code'],
                        style:
                            Styles.headLineStyle2.copyWith(color: Colors.black),
                      ),
                      Text(
                        ticket['to']['name'],
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.88,
              height: AppLayout.getHeight(70),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidtht(10),
                vertical: AppLayout.getHeight(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticket['date'],
                        style:
                            Styles.headLineStyle2.copyWith(color: Colors.black),
                      ),
                      Text(
                        "Date",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ticket['departure_time'],
                        style:
                            Styles.headLineStyle2.copyWith(color: Colors.black),
                      ),
                      Text(
                        "Departure Time",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ticket['number'].toString(),
                        style:
                            Styles.headLineStyle2.copyWith(color: Colors.black),
                      ),
                      Text(
                        "Number",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.88,
              height: AppLayout.getHeight(70),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidtht(10),
                vertical: AppLayout.getHeight(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        personal['passenger'],
                        style:
                            Styles.headLineStyle2.copyWith(color: Colors.black),
                      ),
                      Text(
                        "Passenger",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        personal['passport'],
                        style:
                            Styles.headLineStyle2.copyWith(color: Colors.black),
                      ),
                      Text(
                        "Passport",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.88,
              height: AppLayout.getHeight(70),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidtht(10),
                vertical: AppLayout.getHeight(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticket['E-ticket number'],
                        style:
                            Styles.headLineStyle2.copyWith(color: Colors.black),
                      ),
                      Text(
                        "Number of E-Ticket",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ticket['booking code'],
                        style:
                            Styles.headLineStyle2.copyWith(color: Colors.black),
                      ),
                      Text(
                        "Booking Code",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.88,
              height: AppLayout.getHeight(70),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidtht(10),
                vertical: AppLayout.getHeight(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.paypal_rounded,
                            color: Colors.blue,
                          ),
                          Text(
                            personal['payment'],
                            style: Styles.headLineStyle2
                                .copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                      Text(
                        "Payment Method",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ticket['price'],
                        style:
                            Styles.headLineStyle2.copyWith(color: Colors.black),
                      ),
                      Text(
                        "Price",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.88,
              height: AppLayout.getHeight(100),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidtht(10),
                vertical: AppLayout.getHeight(10),
              ),
              child: BarcodeWidget(
                barcode: Barcode.code128(),
                data: 'https://github.com/',
                drawText: false,
              ),
            ),
          ],
        );
    }
  }
}
