import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ui Controls')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatelessWidget {
  const _UiControlsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [SwitchListTile(value: true, onChanged: (value) {})],
    );
  }
}
