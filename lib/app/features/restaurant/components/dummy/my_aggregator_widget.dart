import 'package:first/app/features/restaurant/components/dummy/my_list_view.dart';
import 'package:first/app/features/restaurant/components/dummy/my_second_widget.dart';
import 'package:flutter/material.dart';

class MyAggregatorWidget extends StatelessWidget {
  const MyAggregatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return MyListView();
    return SingleChildScrollView(
      child: Column(
        children: [
          MyListView(),
          MySecondWidget(),
        ],
      ),
    ) ;
  }
}