import '../../themes/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/ilioyokamilika.dart';
import '../widgets/inayoendelea_widget.dart';
import '../widgets/featured_card_widget.dart';
import '../../controllers/yaliojiriController.dart';
import '../../controllers/featuredCardController.dart';

class MiradiScreen extends StatefulWidget {
  const MiradiScreen({super.key});

  @override
  State<MiradiScreen> createState() => _MiradiScreenState();
}

class _MiradiScreenState extends State<MiradiScreen> {
  //final user = FirebaseAuth.instance.currentUser!;
  final featuredCardController = FeaturedCardController();

  final yaliyojiriCardController = YaliojiriCardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.primaryColor,
        elevation: 0,
        title: const Text('Miradi'),
      actions: [
        IconButton(
          onPressed: () {
            // Handle the onPressed event for notifications
          },
          icon: const Icon(Icons.notifications),
        ),
      ],
      ),
      backgroundColor: Styles.lightCOlor,
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Featured',
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          )),
                      // TextButton(
                      //     onPressed: () {},
                      //     child: const Row(
                      //       children: [
                      //         Text(
                      //           'Tazama Zaidi ',
                      //           style: TextStyle(
                      //               color: Color(0xFF1798D1),
                      //               fontWeight: FontWeight.bold),
                      //         ),
                      //         Icon(
                      //           Icons.chevron_right,
                      //         ),
                      //       ],
                      //     ))
                    ],
                  ),
                ),
                const FeaturedCardWidget(),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 8, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Miradi Inayoendelea',
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          )),
                      
                    ],
                  ),
                ),
                const InayoendeleaCardWidget(),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 8, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Miradi iliyo kamilika',
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          )),
                      
                    ],
                  ),
                ),
                const IliyokamilikaWidget(),
              ],
            ),
          ]))
        ],
      ),
    );
  }
}
