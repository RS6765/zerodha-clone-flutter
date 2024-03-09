import '../../../file_provider.dart';
import '../widgets/holdings_list_tile.dart';

class HoldingsView extends StatelessWidget {
  const HoldingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 75,
          height: Get.height * 0.715,
          width: Get.width,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(24),
              ),
            ),
            child: ListView.builder(
              itemCount: 50,
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Column(
                    children: [
                      const SizedBox(height: 82),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 16,
                              ),
                              IconButton(
                                icon: const Icon(Icons.search),
                                onPressed: () {},
                                visualDensity: const VisualDensity(horizontal: -4, vertical: -2),
                              ),
                              IconButton(
                                icon: const Icon(Icons.filter_list),
                                onPressed: () {},
                                visualDensity: const VisualDensity(horizontal: -4, vertical: -2),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(onPressed: () {}, child: const Text("Family")),
                              TextButton(onPressed: () {}, child: const Text("Analyze")),
                            ],
                          )
                        ],
                      ),
                      const Divider(
                        height: 0,
                        color: Colors.grey,
                        thickness: 0.3,
                      )
                    ],
                  );
                } else {
                  return const HoldingsListTile();
                }
              },
            ),
          ),
        ),
        Positioned(
          height: 150,
          top: 8,
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 10,
                  spreadRadius: 0.2,
                  offset: Offset(0, 1),
                )
              ]),
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Invested",
                              style: TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            Text(
                              "123546",
                              style: TextStyle(fontSize: 22),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Current",
                              style: TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            Text(
                              "123546",
                              style: TextStyle(fontSize: 22),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "P&L",
                          style: TextStyle(color: Colors.grey, fontSize: 22),
                        ),
                        Row(
                          children: [
                            const Text(
                              "+ 2530.16",
                              style: TextStyle(color: Colors.green, fontSize: 22),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Chip(
                              backgroundColor: Colors.green.withOpacity(0.4),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                side: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              color: MaterialStateProperty.all(Colors.green.withOpacity(0.4)),
                              label: const Text(
                                "+ 15.16%",
                                style: TextStyle(color: Colors.green),
                              ),
                              padding: EdgeInsets.zero,
                              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
