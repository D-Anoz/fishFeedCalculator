import 'package:fish/core/constant/colors.dart';
import 'package:fish/core/constant/fonts.dart';
import 'package:fish/model/solution%20list/solutionlist.dart';
import 'package:fish/presentation/screen/date.dart';
import 'package:fish/presentation/widgets/button.dart';
import 'package:fish/presentation/widgets/orangeBtn.dart';
import 'package:fish/presentation/widgets/topCardForSolutionList.dart';
import 'package:flutter/material.dart';

import '../../widgets/solution_list_card.dart';

class SolutionScreen extends StatefulWidget {
  const SolutionScreen({super.key});

  @override
  State<SolutionScreen> createState() => _SolutionScreenState();
}

class _SolutionScreenState extends State<SolutionScreen> {
  final SolutionListModel solutionList = SolutionListModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Solution list',
          style: TextStyle(color: AppColors.whiteColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16),
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: StickyHeaderDelegate(
                minHeight: 150.0,
                maxHeight: 150.0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.solutionListTopCardColor,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 16, right: 16),
                    child: Column(
                      children: [
                        SolutionListTopCard(label: 'Farmer\'s name', info: 'Bikash Dangol'),
                        SolutionListTopCard(label: 'Date:', info: 'Jestha 10, 2079'),
                        SolutionListTopCard(label: 'Time:', info: '11:04AM'),
                        SolutionListTopCard(label: 'Fish species:', info: 'Carp'),
                        SolutionListTopCard(label: 'Feed type:', info: 'Nursery'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const TestCardIcon(),
                  const SizedBox(height: 16),
                  const TestCardIcon(),
                  const SizedBox(height: 20),
                  Table(
                    columnWidths: const {
                      0: FixedColumnWidth(45),
                      1: FixedColumnWidth(130)
                    },
                    border: TableBorder.all(width: 1, color: AppColors.whiteColor),
                    children: [
                      const TableRow(decoration: BoxDecoration(color: AppColors.tableHeadingColor), children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: TableCell(child: Text('S.N', style: TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.bold))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: TableCell(child: Text('Requirement', style: TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.bold))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: TableCell(child: Text('Range', style: TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.bold))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: TableCell(child: Text('Ration mix', style: TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.bold))),
                        ),
                      ]),
                      ...solutionList.solutionData.map((item) => TableRow(children: [
                            Padding(padding: const EdgeInsets.all(8.0), child: TableCell(child: Text(item.sn))),
                            Padding(padding: const EdgeInsets.all(8.0), child: TableCell(child: Text(item.requirement))),
                            Padding(padding: const EdgeInsets.all(8.0), child: TableCell(child: Text(item.range))),
                            Padding(padding: const EdgeInsets.all(8.0), child: TableCell(child: Text(item.rationMix))),
                          ]))
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      SolnListCard(
                        value: 'Rs. 207',
                        desc: 'Total feed cost per day',
                        color: AppColors.rationCardSelectedColor,
                      ),
                      SizedBox(width: 28),
                      SolnListCard(
                        value: 'Rs. 7',
                        desc: 'Feed cost per kg',
                        color: AppColors.feedPerKgCardColor,
                      )
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Expanded(
                          child: OrangeBtn(
                        btnName: 'Save solution',
                        fun: () => print('saved...'),
                      )),
                      const SizedBox(width: 24),
                      Expanded(
                          child: Button(
                        btnName: 'Save as PDF',
                        fun: () => debugPrint('saved as PDF'),
                      ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  StickyHeaderDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class SolutionListTopCard extends StatelessWidget {
  final String label;
  final String info;

  const SolutionListTopCard({
    required this.label,
    required this.info,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          info,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
