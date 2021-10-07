import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(160);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 20.0,
              ),
              decoration: BoxDecoration(
                color: appSecondaryColor,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    size: 26.0,
                  ),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        fillColor: appSecondaryColor,
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Search in Drive",
                      ),
                    ),
                  ),
                  const CircleAvatar(
                    radius: 18.0,
                    backgroundImage: NetworkImage(rickImage),
                  ),
                ],
              ),
            ),
            const TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: appBlueTextColor,
              labelColor: appBlueTextColor,
              unselectedLabelColor: appTextColor,
              tabs: [
                Tab(child: Text('My Drive')),
                Tab(child: Text('Computers')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
