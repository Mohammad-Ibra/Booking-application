import 'package:booking/screens/hotel_view.dart';
import 'package:booking/screens/ticket_view.dart';
import 'package:booking/utils/app_info_list.dart';
import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:booking/widgets/app_double_text_widget.dart';
import 'package:booking/widgets/text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidtht(20)),
            width: AppLayout.getWidtht(400),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/logo.png"),
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(25),
                const TextWidgetInput(
                  label: "Search",
                  icon: Icon(
                    FluentSystemIcons.ic_fluent_search_regular,
                    color: Color(0xFFBFC205),
                  ),
                ),
                const Gap(40),
                const AppDoubleTextWidget(label: "Upcoming flights"),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList
                  .map((e) => TicketView(
                        ticket: e,
                        isColored: true,
                      ))
                  .toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidtht(20)),
            child: const AppDoubleTextWidget(label: "Hotels"),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(10),
            child: Row(
              children: hotelList.map((e) => HotelView(hotel: e)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
