//  Create extension function to called toggle  Username convert
// uppercase to lowercase and vice versa


extension ToggleCase on String{
  String Toggle() {
    return this.split('').map((Char) {
      if (Char ==Char.toUpperCase()) {
        return Char.toLowerCase();
      }
      else  {
        return Char.toUpperCase();
      }
    }).join();
  }
}



void main() {
 print('dart'.Toggle());
}
