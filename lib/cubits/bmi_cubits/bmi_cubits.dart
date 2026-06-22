import 'package:flutter_application_cubit/cubits/bmi_cubits/bmi_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(BmiInitial());

  int weight = 65;
  int age = 26;
  double height = 170;

  void increaseWeight() {
    weight++;
    emit(BmiUpdated());
  }

  void decreaseWeight() {
    weight--;
    emit(BmiUpdated());
  }

  void increaseAge() {
    age++;
    emit(BmiUpdated());
  }

  void decreaseAge() {
    age--;
    emit(BmiUpdated());
  }

  void changeHeight(double value) {
    height = value;
    emit(BmiUpdated());
  }
}
