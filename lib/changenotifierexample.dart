import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RankMonitor extends ChangeNotifier {
  int rank = 0; //setter

  int get _rank => rank; //getter

  _updateRank() {
    rank = 1;
    notifyListeners();
  }
}

class RankPage extends StatelessWidget {
  const RankPage({super.key});

  @override
  Widget build(BuildContext context) {
    final rankMonitor = context.watch<RankMonitor>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Rank Page"),
      ),
      body: Column(
        children: [
          Text("Rank: ${rankMonitor._rank}"),
          ElevatedButton(
            child: Text("Update Rank"),
            onPressed: () {
              rankMonitor._updateRank();
            },
          )
        ],
      ),
    );
  }
}
