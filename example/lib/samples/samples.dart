import 'package:example/loading_adaptive_card.dart';
import 'package:flutter/material.dart';

import '../brightness_switch.dart';

class SamplesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Samples"),
        actions: [
          BrightnessSwitch(),
        ],
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          if (index == 0) return DemoAdaptiveCard("lib/samples/example${index + 1}", supportMarkdown: false);
          return DemoAdaptiveCard("lib/samples/example${index + 1}");
        },
      ),
    );
  }
}
