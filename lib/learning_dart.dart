/// Comparing Static-type lang with Dynamic-type lang

/// Dynamic type lang (e.g. Python, JavaScript) var assignment (i.e.  x = 1;)
/// x = 1

/// Syntax of static-type lang (e.g. C, C++, Java, dart)
int x = 1;

/// const, final, var, dynamic

/// Memory type const fixed value & datatype pre-compiled
const int y = 1;

/// use case of the const vars
/// const endpoint = 'https://api.example.com/posts';

/// Memory type final
final int z = 1;

/// Memory type var
int  a = 1;

/// Memory type dynamic
dynamic b = 1;

/// Object
late final int xxx;
late final Object yyy;

/// Object?
late final int? aa; // ( any int type  or null)
late final Object? bb; // ( any Object type or null)

// type of class & inheritance & mixin

mixin Rate {
  void rate() {
    print('rate');
  }
}

mixin Salary {
  void salary();
}

abstract class Human {
  final String age;
  const Human(this.age);
  void name();
  int walkSpeed() {
    return 10;
  }
}

/// Functions
void work() {}

abstract class Work {
  //Methods
  void work();
}

class Abhishek with Salary implements Human, Work {
  @override
  void name() {}

  @override
  int walkSpeed() {
    return 20;
  }

  @override
  void work() {}

  @override
  String get age => throw UnimplementedError();

  @override
  void salary() {}

  const Abhishek();

  factory Abhishek.fromJson(Map<String, dynamic> json) {
    return const Abhishek();
  }
}

class Harsh extends Human with Salary, Rate implements Work {
  Harsh(super.age);

  @override
  void name() {}

  @override
  void work() {}

  @override
  void salary() {}
}

// Generic
final listOfNumber = ['28', 28, true, false, 1, '9999', null, [], {}, ()];

final list = <num>[28, 1, 28];
final set = <num>{28, 1};
final map = <String, Object?>{'one': 1, 'two': 'two'};
const record = ('one', 1, true);

enum WeekDay {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

bool isMonday(WeekDay day) {
  switch (day) {
    case WeekDay.monday:
      return true;
    case WeekDay.tuesday:
      return false;
    case WeekDay.wednesday:
      return false;
    case WeekDay.thursday:
      return false;
    case WeekDay.friday:
      return false;
    case WeekDay.saturday:
      return false;
    case WeekDay.sunday:
      return false;
  }
}
