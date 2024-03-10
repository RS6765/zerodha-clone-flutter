import '../../../file_provider.dart';

class IpoListTile extends StatelessWidget {
  final int index;
  const IpoListTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          const Text(
            'Mankind Pharma LTD',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          const SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("MANKIND", style: TextStyle(fontSize: 14)),
              Container(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: index % 2 == 0 ? Colors.blue : Colors.grey.withOpacity(0.2), borderRadius: BorderRadius.circular( index % 2 == 0 ?3:0)),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child:  Text( index % 2 == 0 ? "Apply" : "CLOSED", style: TextStyle(fontSize:  index % 2 == 0 ? 11 : 14, color:  index % 2 == 0 ? Colors.white : Colors.black)),
              )
            ],
          ),
          const SizedBox(height: 8),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '1026 - 1080',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Text(
                "25th - 27th Apr",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          const SizedBox(height: 8),
          const Divider(height: 0, color: Colors.grey, thickness: 0.3)
        ],
      ),
    );
  }
}
