import '../../../file_provider.dart';

class HoldingsListTile extends StatelessWidget {
  const HoldingsListTile({super.key});

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
                  RichText(
                    text: const TextSpan(text: 'Qty. ', style: TextStyle(color: Colors.grey, fontSize: 14), children: <TextSpan>[
                      TextSpan(text: '2', style: TextStyle(color: Colors.black, fontSize: 14)),
                    ]),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 4,
                    width: 4,
                    decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                  ),
                  const SizedBox(width: 8),
                  RichText(
                    text: const TextSpan(text: 'Avg. ', style: TextStyle(color: Colors.grey, fontSize: 14), children: <TextSpan>[
                      TextSpan(text: '66.33', style: TextStyle(color: Colors.black, fontSize: 14)),
                    ]),
                  ),
                ],
              ),
              const Text(
                "+ 5.03%",
                style: TextStyle(color: Colors.green),
              )
            ],
          ),
        ),
        ListTile(
          key: UniqueKey(),
          title: const Text("RELIANCE", style: TextStyle(fontSize: 14)),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: RichText(
              text: const TextSpan(text: 'Invested ', style: TextStyle(color: Colors.grey, fontSize: 12), children: <TextSpan>[
                TextSpan(text: '133.30', style: TextStyle(color: Colors.black, fontSize: 12)),
              ]),
            ),
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text("2924.50", style: TextStyle(color: Colors.green, fontSize: 14)),
              const SizedBox(height: 6,),
              RichText(
                  text: const TextSpan(text: 'LTP: ', style: TextStyle(color: Colors.grey, fontSize: 12), children: <TextSpan>[
                TextSpan(text: '70.00', style: TextStyle(color: Colors.black, fontSize: 12)),
                TextSpan(text: '(-0.56%)', style: TextStyle(color: Colors.red, fontSize: 12)),
              ]))
              // Text("+20.25(+0.73%)", style: TextStyle(fontSize: 14)),
            ],
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
        ),
        const Divider(height: 0, color: Colors.grey, thickness: 0.3)
      ],
    );
  }
}
