import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:booking/widgets/app_double_text_widget.dart';
import 'package:booking/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidtht(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                color: const Color(0xFFF4F6FD),
              ),
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(5)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(AppLayout.getHeight(50))),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text(
                        "Airline Tickets",
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(5)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(AppLayout.getHeight(50))),
                      color: Colors.transparent,
                    ),
                    child: const Center(
                      child: Text(
                        "Hotels",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          const TextWidgetInput(
              label: "Departure",
              icon: Icon(
                Icons.flight_takeoff_rounded,
                color: Colors.grey,
              )),
          Gap(AppLayout.getHeight(20)),
          const TextWidgetInput(
            label: "Arrival",
            icon: Icon(
              Icons.flight_land_rounded,
              color: Colors.grey,
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          OutlinedButton(
            onPressed: () {
              print("Finding tickets...");
            },
            style: OutlinedButton.styleFrom(
                fixedSize:
                    Size(AppLayout.getWidtht(400), AppLayout.getHeight(55)),
                primary: Colors.blueGrey,
                padding: EdgeInsets.all(AppLayout.getWidtht(10)),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                side: const BorderSide(
                  color: Colors.blue,
                  width: 0.0,
                )),
            child: Text(
              "Find Tickets",
              style: Styles.textStyle.copyWith(color: Colors.white),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          const AppDoubleTextWidget(label: "Upcoming flights"),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(10),
                  horizontal: AppLayout.getWidtht(10),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(12)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1.0,
                        spreadRadius: 2.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/set.jpg"))),
                    ),
                    Gap(AppLayout.getHeight(5)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out!",
                      style:
                          Styles.headLineStyle2.copyWith(color: Colors.black),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(children: [
                    Container(
                      width: size.width * 0.44,
                      height: AppLayout.getHeight(144),
                      decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18))),
                      padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(10),
                        horizontal: AppLayout.getWidtht(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Discount\nfor survey",
                            style: Styles.headLineStyle2
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            "Take the survey about our services and get discount!",
                            style:
                                Styles.textStyle.copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: -45,
                      top: -35,
                      child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 18, color: Color(0xFF189999)),
                            color: Colors.transparent),
                      ),
                    ),
                  ]),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(246),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEC6545),
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(12)),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(15),
                      horizontal: AppLayout.getWidtht(15),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Rate Us",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.white),
                        ),
                        Gap(AppLayout.getHeight(10)),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: '😍',
                            style: TextStyle(fontSize: 28),
                          ),
                          TextSpan(
                            text: '🥰',
                            style: TextStyle(fontSize: 40),
                          ),
                          TextSpan(
                            text: '😘',
                            style: TextStyle(fontSize: 28),
                          ),
                        ]))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
