import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BidsView extends GetView {
  const BidsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BidsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BidsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
