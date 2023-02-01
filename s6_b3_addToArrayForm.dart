//Bài 3: https://leetcode.com/problems/add-to-array-form-of-integer/

class Solution {
  List<int> addToArrayForm(List<int> num, int k) {
    String strNum = "";
    num.forEach((e) {
      strNum += e.toString();
    });

    return (BigInt.parse(strNum) + BigInt.from(k))
        .toString()
        .split('')
        .toList()
        .map(int.parse)
        .toList();
  }
}
