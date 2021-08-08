// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'presentation/share_widgets/tabsbar_widget.dart';
import 'presentation/theme/hamsa_theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hamsa Lomi',
      theme: HamsaTheme.lightTheme,
      home: DefaultTabController(
        length: 2,
        child: HamsaTabBar(
          firstText: 'Email',
          secondText: 'Phone',
          tab1: TabBarView(
            children: [Text('email')],
          ),
          tab2: TabBarView(
            children: [],
          ),
        ),
      ),
    );
  }
}
