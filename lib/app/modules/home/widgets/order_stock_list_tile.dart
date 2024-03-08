import '../../../file_provider.dart';

class OrderStockListTile extends StatelessWidget {
  const OrderStockListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration:
                        BoxDecoration(color: Colors.grey.withOpacity(0.2)),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: const Text("OCO", style: TextStyle(fontSize: 14)),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(color: Colors.red.shade100),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: const Text("SELL",
                        style: TextStyle(fontSize: 14, color: Colors.red)),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(color: Colors.green.withOpacity(0.2)),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: const Text("ACTIVE",
                    style: TextStyle(fontSize: 14, color: Colors.green)),
              ),
            ],
          ),
        ),
        ListTile(
          key: UniqueKey(),
          title: const Text(
            "RELIANCE",
            style: TextStyle(fontSize: 14),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: RichText(
              text: const TextSpan(
                  text: 'Qty: ',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                  children: <TextSpan>[
                    TextSpan(
                        text: '10',
                        style: TextStyle(color: Colors.black, fontSize: 12)),
                  ]),
            ),
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text("2924.50",
                  style: TextStyle(color: Colors.green, fontSize: 14)),
              RichText(
                  text: const TextSpan(
                      text: 'LTP: ',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                      children: <TextSpan>[
                    TextSpan(
                        text: '0.00',
                        style: TextStyle(color: Colors.black, fontSize: 14)),
                  ]))
              // Text("+20.25(+0.73%)", style: TextStyle(fontSize: 14)),
            ],
          ),
          visualDensity: const VisualDensity(vertical: -4),
        ),
        const Divider(height: 0, color: Colors.grey, thickness: 0.3)
      ],
    );
  }
}
