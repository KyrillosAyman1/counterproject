import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project3/Presentation/Manager/counter/counter_cubit.dart';
import 'package:project3/Presentation/Screens/floating_button_section.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Counter App",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "My Counter cubit",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            BlocConsumer<CounterCubit, CounterState>(
              listener: (context, state) {
                if (state is CounterValueChangeState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.counter.toString())));
                }
              },
              builder: (context, state) {
                if (state is CounterInitial) {
                  return Text(
                    "0",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }
                if (state is CounterValueChangeState) {
                  return Text(state.counter.toString(),
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),);
                } else {
                  return SizedBox();
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingButtonSection(),
    );
  }
}
