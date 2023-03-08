import 'package:flutter/cupertino.dart';

class searchFragment extends StatefulWidget {
  const searchFragment({Key? key}) : super(key: key);

  @override
  State<searchFragment> createState() => _searchFragmentState();
}

class _searchFragmentState extends State<searchFragment> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(child: Text("searchFrag"));
  }
}
