import 'package:flutter/material.dart';
import 'package:game_test_uiful/constants/app_colors.dart';
import 'package:game_test_uiful/constants/app_text.dart';
import 'package:game_test_uiful/models/continent.dart';
import 'package:game_test_uiful/components/continent_card.dart';
import 'package:game_test_uiful/pages/test_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: AppColors.bgColor,
      // backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        title: const Text(AppText.gameTitle,
            style: TextStyle(
                color: AppColors.black,
                fontSize: 22,
                fontWeight: FontWeight.w600)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: AppColors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Divider(
            height: 2,
            color: AppColors.black,
            indent: 30,
            endIndent: 30,
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(14),
              itemCount: continents.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                // final item = continents[index];
                return Expanded(
                  child: ContinentCard(
                    item: continents[index],
                    onTap: () {
                      if (continents[index].guestion != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => TestPage(
                              guestion: continents[index].guestion!,
                            ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Bul bolyk daiyn emes'),
                          ),
                        );
                      }
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
