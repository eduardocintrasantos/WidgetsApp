import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress'),
      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text('Indicador de progresso circular'),
          SizedBox(height: 10,),
          CircularProgressIndicator(strokeWidth: 2,backgroundColor: Colors.black45,),

          SizedBox(height: 20,),
          Text('Indicador controlado circular e linear'),
          SizedBox(height: 10,),
          _ControlledProgressIndicator()
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
        return (value * 2) / 100;
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {

        final progressValue = snapshot.data ?? 0;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              CircularProgressIndicator(value: progressValue, strokeWidth: 2,backgroundColor: Colors.black12,),
              SizedBox(width: 20,),
              Expanded(
                child: LinearProgressIndicator(value: progressValue)
              )
            ],
          ),
        );
      },
    );
  }
}