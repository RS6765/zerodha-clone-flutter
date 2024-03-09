import '../../../file_provider.dart';

class BidsActionListTile extends StatelessWidget {
  const BidsActionListTile({super.key});

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
              RichText(
                text: const TextSpan(text: 'Eligible qty ', style: TextStyle(color: Colors.grey, fontSize: 14), children: <TextSpan>[
                  TextSpan(text: '5', style: TextStyle(color: Colors.black, fontSize: 14)),
                ]),
              ),
              RichText(
                text: const TextSpan(text: 'Holdings P&L ', style: TextStyle(color: Colors.grey, fontSize: 14), children: <TextSpan>[
                  TextSpan(text: '5', style: TextStyle(color: Colors.black, fontSize: 14)),
                ]),
              ),
            ],
          ),
        ),
        ListTile(
          key: UniqueKey(),
          title: const Text("RELIANCE", style: TextStyle(fontSize: 14)),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: RichText(
              text: const TextSpan(text: 'Holding Price ', style: TextStyle(color: Colors.grey, fontSize: 12), children: <TextSpan>[
                TextSpan(text: '133.30', style: TextStyle(color: Colors.black, fontSize: 12)),
              ]),
            ),
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text("#2924", style: TextStyle(fontSize: 14)),
              const SizedBox(height: 6,),
              RichText(
                  text: const TextSpan(text: 'LTP: ', style: TextStyle(color: Colors.grey, fontSize: 12), children: <TextSpan>[
                    TextSpan(text: '70.00', style: TextStyle(color: Colors.black, fontSize: 12)),
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
