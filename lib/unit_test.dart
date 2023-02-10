class Utils {
  String baseUrl = "https://kun.uz";

  int myNumber = 100;

  bool isMaxNew(int amount, int maxAmount, double rate, bool isDollar) {
    if (isDollar) {
      return maxAmount < rate * amount;
    } else {
      return maxAmount < amount;
    }
  }

  bool stringEquals(String main, String sub) {
    if (main.replaceAll(" ", "").length < sub.replaceAll(" ", "").length) {
      return false;
    } else {
      if ((main
              .replaceAll(" ", "")
              .substring(0, sub.replaceAll(" ", "").length)
              .toUpperCase()) ==
          sub.replaceAll(" ", "").toUpperCase()) {
        return true;
      } else {
        return false;
      }
    }
  }

  static String format(int k) {
    if (k < 10) {
      return "0$k";
    } else {
      return k.toString();
    }
  }

  String returnCardFormatText(String cardNumber) {
    String part1 = cardNumber.substring(0, 4);
    String part2 = cardNumber.substring(4, 8);
    String part3 = cardNumber.substring(8, 12);
    String part4 = cardNumber.substring(12, 16);
    return "$part1 $part2 $part3 $part4";
  }
}
