import '../../../file_provider.dart';
import '../widgets/position_list_tile.dart';

class PositionsView extends StatelessWidget {
  const PositionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 56,
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
                      const SizedBox(height: 56),
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
                              TextButton(onPressed: () {}, child: const Text("Analyze")),
                              TextButton(onPressed: () {}, child: const Text("Analytics")),
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
                  return const PositionsListTile();
                }
              },
            ),
          ),
        ),
        Positioned(
          height: 110,
          top: 8,
          width: Get.width,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            decoration:  BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 10,
                spreadRadius: 0.2,
                offset: Offset(0, 1),
              )
            ]),
            height: 100,
            alignment: Alignment.center,
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total P&L",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text(
                    "-2271.25",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
