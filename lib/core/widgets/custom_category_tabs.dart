import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCategoryTabs extends StatelessWidget {
  const CustomCategoryTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 3,
        child: Column(
          children: const [
            TabBar(
              tabs: [
                Tab(text: 'Homes'),
                Tab(text: 'Experiences'),
                Tab(text: 'Places'),
              ],
              labelColor: Colors.black,
              unselectedLabelColor: const Color(0xff757575),
              indicatorColor: Colors.black,
            ),
          ],
        ));
  }
}
