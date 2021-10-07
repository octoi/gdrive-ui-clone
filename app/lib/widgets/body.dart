import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 20.0,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    'Name',
                    style: TextStyle(
                      color: appTextColor,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(width: 2.0),
                  Icon(
                    Icons.arrow_upward,
                    size: 17.0,
                    color: appTextColor,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.list),
                color: appTextColor,
              )
            ],
          ),
          GridView.count(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            crossAxisCount: 2,
            children: List.generate(
              10,
              (index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.folder,
                      color: appTextColor,
                      size: 150.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(width: 16.0),
                          Text(
                            'Folder',
                            style: TextStyle(
                              color: appTextColor,
                              fontSize: 16.0,
                            ),
                          ),
                          Icon(
                            Icons.more_vert,
                            color: appTextColor,
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
