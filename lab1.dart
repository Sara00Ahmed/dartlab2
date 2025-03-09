// • Create extension function to called validate Username that accept
// only character with a-z ,  A-Z and 0 -9 and $, _ and  its length between
// 6 and 12, and return bool



import 'dart:io';
import 'dart:math';

// Create extension for String type
extension UsernameValidator on String {
  bool validateUsername() {
    // Regular expression pattern for validation
    const pattern = r'^[a-zA-Z0-9_$]{6,12}$';
    return RegExp(pattern).hasMatch(this);
  }
}

class StringValidator {
   static String generateRandom({int length = 8}) {
    assert(length >=6 && length <= 12, "Length must be between 6 and 12");
    const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_';
    final r = Random();
    return List.generate(length, (index) => chars[r.nextInt(chars.length)]).join();
  }
}

void main() {
  // Test validation using the extension
  print('Enter username:');
  final input = stdin.readLineSync()!.trim() ;
  print('Username is valid: ${input.validateUsername()}');

try {
    final randomUsername = StringValidator.generateRandom();
    print('Generated username: $randomUsername');
  } catch (e) {
    print(e);
  }

  // Generate random valid username
  final randomUsername = StringValidator.generateRandom();
  print('Generated username: $randomUsername');
  print('test123'.validateUsername());  // true
  print('short'.validateUsername());    // false


}