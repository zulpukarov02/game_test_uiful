import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_test_uiful/models/continent.dart';

class ContinentCard extends StatelessWidget {
  const ContinentCard({
    super.key,
    required this.item,
    required this.onTap,
  });

  final Continent item;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 218, 230, 230),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text(
              item.name,
              style: const TextStyle(fontSize: 22),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/continents/${item.icon}.svg',
                  color: item.color,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
