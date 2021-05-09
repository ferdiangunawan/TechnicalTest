import "dart:math";

void main() {
  var x = 0;
  var y = 0;
  var numberList = [6, 8, 1, 4, 7, 2];

// Total
  for (var i = 0; i < numberList.length; i++) {
    x += numberList[i];
  }
  print("Total : ${x}");

  //Nilai kecil ke besar
  numberList.sort((a, b) => a.compareTo(b));

  print("Kecil ke Besar : ${numberList}");

  //Nilai paling besar
  var nilaiBesar = numberList.reduce(max);

  print("Nilai paling besar : ${nilaiBesar}");

  //Nilai paling besar ke-3
  numberList.sort((b, a) => a.compareTo(b));

  y = numberList[2];

  print("Nilai paling besar ke-3 : ${y}");
}
