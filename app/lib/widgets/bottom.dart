import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: appSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              LabelIcon(icon: Icons.home_outlined, label: 'Home'),
              LabelIcon(icon: Icons.star_border, label: 'Starred'),
              LabelIcon(icon: Icons.people_outlined, label: 'Shared'),
              LabelIcon(icon: Icons.folder, label: 'Files'),
            ],
          ),
        ),
      ),
    );
  }
}

class LabelIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const LabelIcon({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Icon(
            icon,
            color: appTextColor,
            size: 30.0,
          ),
          const SizedBox(height: 5.0),
          Text(
            label,
            style: const TextStyle(
              color: appTextColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
