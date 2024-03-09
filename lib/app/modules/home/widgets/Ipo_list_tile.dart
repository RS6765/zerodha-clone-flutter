import 'package:flutter/cupertino.dart';

import '../../../file_provider.dart';

class IpoListTile extends StatelessWidget {
  const IpoListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Mankind Pharma LTD',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            )),
        ListTile(
          key: UniqueKey(),
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: const Text("MANKIND", style: TextStyle(fontSize: 14)),
          ),
          subtitle: const Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              '1026 - 1080',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.zero,
                decoration:  BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(3)),
                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                child: const Text("Apply", style: TextStyle(fontSize: 10, color: Colors.white)),
              ),
              const Text("25th - 27th Apr",style: TextStyle(fontSize: 12),)
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
