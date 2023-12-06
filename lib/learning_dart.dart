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
var a = 1;

/// Memory type dynamic
dynamic b = 1;

class Human {
  /// Memory type const fixed value & datatype pre-compiled
  /// use case of the const vars
  /// const endpoint = 'https://api.example.com/posts';
  static const int y = 1;

  /// Memory type final
  final int z = 1;

  /// Memory type var
  var a = 1;

  /// Memory type dynamic
  dynamic b = 1;
}

/// Memory type final
Human human = Human();

var updatedHuman = human.y = 2;
var updatedHuman1 = human.z = 'hello world';
var updatedHuman2 = human.a = 2;
var updatedHuman4 = human.b = true;
