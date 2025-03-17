import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  const ProgressScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progressão indicadores'),
      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 30,),
          Text('Progresso circular'),
          SizedBox(height: 10,),
          CircularProgressIndicator(strokeWidth: 2,),

          SizedBox(height: 20,),
          Text('Progresso circular controlado'),
          SizedBox(height: 10,),
          _ControlledProgresIndicator()
        ],
      ),
    );
  }
}

class _ControlledProgresIndicator extends StatelessWidget {
  const _ControlledProgresIndicator();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}