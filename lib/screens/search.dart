import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
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
              style: Styles.headLineStyle4.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
