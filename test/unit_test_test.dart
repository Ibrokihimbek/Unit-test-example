import 'package:unit_test/unit_test.dart';
import 'package:test/test.dart';

void main() {
  group(
    "UTILS CLASS",
    () {
      test(
        "IS MAX NEW PASSED",
        () {
          expect(
            Utils().isMaxNew(10, 20, 2.0, true),
            false,
          );
        },
      );

      test(
        "STRING EQUALS PASSED",
        () {
          expect(
            Utils().stringEquals("salom", ""),
            true,
          );
        },
      );

      test(
        "FORMAT PASSED",
        () {
          expect(
            Utils.format(9),
            "0${9}",
          );
        },
      );

      test(
        "CARD FORMAT TEXT PASSED",
        () {
          expect(
            Utils().returnCardFormatText("1234567891011123"),
            '${1234} ${5678} ${9101} ${1123}',
          );
        },
      );
      group(
        "UTILS FIELDS",
        () {
          test(
            'BASE URL PASSED',
            () {
              expect(Utils().baseUrl, isNotEmpty);
            },
          );
          test(
            "MY NUMBER PASSED",
            () {
              expect(Utils().myNumber, 100);
            },
          );
        },
      );
    },
  );
}
