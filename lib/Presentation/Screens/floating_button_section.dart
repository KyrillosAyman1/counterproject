import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project3/Presentation/Manager/counter/counter_cubit.dart';

class FloatingButtonSection extends StatelessWidget {
  const FloatingButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.blue,
        
          onPressed: () {
            context.read<CounterCubit>().increament();

          },
          
          child: Text("+",style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),),
         
        ),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
             context.read<CounterCubit>().decreament();
          },
          child: Text("-",style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),),
        ),
      ],
    );
  }
}
