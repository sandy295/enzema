import 'package:flutter/material.dart';
class LoaderState extends StatefulWidget {
  const LoaderState({super.key});

  @override
  State<LoaderState> createState() => _LoaderStateState();
}

class _LoaderStateState extends State<LoaderState>
    with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(10.0),
            child: ListTile(
              leading: const Icon(Icons.lock_clock),
            ));
  }
}