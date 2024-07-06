import 'package:flutter/material.dart';

import '/global/widget/global_appbar.dart';
import '/global/widget/global_text.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(
        title: "Dashboard",
      ),
      body: const Center(
        child: GlobalText(str: "Project Setup"),
      ),
    );
  }
}

