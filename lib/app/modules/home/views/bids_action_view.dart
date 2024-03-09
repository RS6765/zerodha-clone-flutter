import '../../../file_provider.dart';
import '../widgets/bids_action_list_tile.dart';

class BidActionsView extends StatelessWidget {
  const BidActionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      child: ListView.builder(
        itemCount: 50,
        primary: false,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
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
            return const BidsActionListTile();
          }
        },
      ),
    );
  }
}
