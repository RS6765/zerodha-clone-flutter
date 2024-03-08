import 'package:flutter/material.dart';

class StockListTile extends StatelessWidget {
  const StockListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          key: UniqueKey(),
          title: const Text("RELIANCE"),
          subtitle: const Text("NSE",
              style: TextStyle(color: Colors.grey, fontSize: 14)),
          trailing: const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("2924.50",
                  style: TextStyle(color: Colors.green, fontSize: 16)),
              Text("+20.25(+0.73%)", style: TextStyle(fontSize: 14))
            ],
          ),
        ),
        const Divider(
          height: 0,
          color: Colors.grey,
          thickness: 0.3,
        )
      ],
    );
  }
}
