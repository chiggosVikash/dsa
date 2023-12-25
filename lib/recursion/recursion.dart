class Recursion {
  int factorial(int n) {
    if (n == 1) {
      return 1;
    }
    return n * factorial(n - 1);
  }

  /// reverse string using recursion method
  String revStr(String str) {
    if (str.isEmpty) {
      return "";
    }

    return revStr(str.substring(1)) + str.substring(0, 1);
  }

  /// add number
  int addNumberToBoundaryNo(int boundaryNo) {
    if (boundaryNo == 1) {
      return 1;
    }

    return addNumberToBoundaryNo(boundaryNo - 1) + boundaryNo;
  }

  /// reverse number
  int revNumer(int number, [int rev = 0]) {
    if (number == 0) {
      return rev;
    }
    rev = rev * 10 + number % 10;
    return revNumer(number ~/ 10, rev);
  }
}
