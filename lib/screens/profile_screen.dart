import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidtht(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Container(
            width: size.width,
            height: AppLayout.getHeight(80),
            padding: EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width * 0.20,
                  height: AppLayout.getHeight(80),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/logo.png",
                          ))),
                ),
                Gap(AppLayout.getWidtht(10)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book Tickets",
                      style: Styles.headLineStyle2,
                    ),
                    Text(
                      "Beirut",
                      style: Styles.textStyle.copyWith(color: Colors.grey),
                    ),
                    Container(
                      width: size.width * 0.25,
                      height: AppLayout.getHeight(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.workspace_premium_rounded,
                            color: Colors.grey,
                          ),
                          Text("Premium Status",
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getWidtht(75)),
                TextButton(
                  onPressed: () {
                    print("Edit");
                  },
                  child: Text(
                    "Edit",
                    style: Styles.headLineStyle4,
                  ),
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          Stack(
            children: [
              Container(
                width: size.width,
                height: AppLayout.getHeight(80),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 63, 115, 157),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(AppLayout.getHeight(10)),
              ),
              Positioned(
                right: -30,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(20)),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 18,
                          color: const Color.fromARGB(189, 1, 25, 131)),
                      color: Colors.transparent),
                ),
              ),
              Positioned(
                top: 15,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width * 0.18,
                      height: AppLayout.getHeight(30),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.notification_important_rounded,
                        color: Color.fromARGB(255, 63, 115, 157),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new award!",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "You've had 150 flights in a year",
                          style: Styles.headLineStyle4.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            "Accumulated miles",
            style: Styles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(10)),
          Center(
            child: Text(
              "46 842",
              style: Styles.headLineStyle1.copyWith(fontSize: 40),
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Miles per airline",
                style: Styles.headLineStyle4,
              ),
              Text(
                "Received from",
                style: Styles.headLineStyle4,
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "23 042",
                style: Styles.headLineStyle3.copyWith(color: Colors.black),
              ),
              Text(
                "Middle East Airlines",
                style: Styles.headLineStyle3.copyWith(color: Colors.black),
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "13 042",
                style: Styles.headLineStyle3.copyWith(color: Colors.black),
              ),
              Text(
                "Air France",
                style: Styles.headLineStyle3.copyWith(color: Colors.black),
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "8 250",
                style: Styles.headLineStyle3.copyWith(color: Colors.black),
              ),
              Text(
                "Pegasus Air Lines",
                style: Styles.headLineStyle3.copyWith(color: Colors.black),
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "2 508",
                style: Styles.headLineStyle3.copyWith(color: Colors.black),
              ),
              Text(
                "Qatar Airlines",
                style: Styles.headLineStyle3.copyWith(color: Colors.black),
              )
            ],
          ),
          Gap(AppLayout.getHeight(10)),
          Center(
            child: TextButton(
              onPressed: () {
                print("See more!");
              },
              child: Text(
                "How to get more miles?",
                style: Styles.headLineStyle4,
              ),
            ),
          )
        ],
      ),
    );
  }
}
