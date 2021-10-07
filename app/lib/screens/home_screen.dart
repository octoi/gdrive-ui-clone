import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(100.0),
      //   child: AppBar(
      //     backgroundColor: appBgColor,
      //     title: TextField(
      //       decoration: InputDecoration(
      //         contentPadding: const EdgeInsets.all(20.0),
      //         border: OutlineInputBorder(
      //           borderRadius: BorderRadius.circular(50.0),
      //           borderSide: BorderSide.none,
      //         ),
      //         fillColor: appSecondaryColor,
      //         filled: true,
      //         hintStyle: TextStyle(color: Colors.grey[800]),
      //         hintText: "Search in Drive",
      //         prefixIcon: const Icon(
      //           Icons.menu,
      //           color: appTextColor,
      //           size: 28.0,
      //         ),
      //         suffix: CircleAvatar(
      //           radius: 20.0,
      //           backgroundImage: NetworkImage(rickImage),
      //         ),
      //       ),
      //     ),
      //   ),
      //),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: SafeArea(
          child: Container(
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
        ),
      ),
    );
  }
}
