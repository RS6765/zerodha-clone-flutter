import 'package:flutter/material.dart';

class StockListTile extends StatelessWidget {
  const StockListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text("RELIANCE"),
      subtitle: Text(
        "NSE",
        style: TextStyle(color: Colors.grey, fontSize: 14),
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "2924.50",
            style: TextStyle(color: Colors.green, fontSize: 16),
          ),
          Text(
            "+20.25(+0.73%)",
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
