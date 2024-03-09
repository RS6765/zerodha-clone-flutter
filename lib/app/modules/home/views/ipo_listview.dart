import '../../../file_provider.dart';
import '../widgets/Ipo_list_tile.dart';

class IpoView extends StatelessWidget {
  const IpoView();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      child: ListView.builder(
        itemCount: 5,
        primary: false,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
              children: [
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
                        Chip(
                          label: const Text(
                            "Ongoing",
                            style: TextStyle(color: Colors.blue, fontSize: 12),
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                          visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
                          side: const BorderSide(color: Colors.transparent),
                          backgroundColor: Colors.blue.withOpacity(0.1),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        FilterChip(
                          onSelected: (value) {},
                          selected: false,
                          label: const Text(
                            "Applied",
                            style: TextStyle(color: Colors.blue, fontSize: 12),
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                          visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
                          side: const BorderSide(color: Colors.transparent),
                          selectedColor: Colors.blue.withOpacity(0.1),
                        ),
                        SizedBox(
                          width: 16,
                        ),
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
            return const IpoListTile();
          }
        },
      ),
    );
  }
}
