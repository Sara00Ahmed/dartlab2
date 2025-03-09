//  Definea class SimpleTimethat stores the time passed from the beginning of
// the day. It should take four arguments: hours, minutes, seconds and
// nanoseconds, where each argument has the defaultvalue of zero.
//  • Implement two member functions: toSecondOfDayand
// toNanoOfDayreturning the number of seconds and nanoseconds
// accordingly passed from the beginning of the day

  class SimpleTime {
  // Constructor default value
      final int hours;
      final int minutes;
      final int seconds;
      final int nanoseconds;

  // Constructor
      SimpleTime({
        this.hours = 0,
        this.minutes = 0,
        this.seconds = 0,
        this.nanoseconds = 0
      });

  // Method toSecondOfDay
  int toSecondOfDay() {
    return hours *3600 + minutes * 60 + seconds;
  }
  // Method toNanoOfDay
  int toNanoOfDay() {
    return toSecondOfDay() * 1000000000 + nanoseconds;
  }
}



void main() {
  final time = SimpleTime(
    hours: 12,
    minutes: 34,
    seconds: 56,
    nanoseconds: 789000000,
  );


    print(time.toSecondOfDay()); //45296
    print(time.toNanoOfDay()); //45296789000000

    final midnight = SimpleTime();
    print(midnight.toSecondOfDay());//0
    print(midnight.toNanoOfDay());//0

}
