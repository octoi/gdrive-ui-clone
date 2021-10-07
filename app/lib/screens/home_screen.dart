import 'package:app/utils/constants.dart';
import 'package:app/widgets/bottom.dart';
import 'package:app/widgets/header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: appBgColor,
        appBar: Header(),
        bottomNavigationBar: Bottom(),
      ),
    );
  }
}
