//https://leetcode.com/problems/roman-to-integer/

class Solution {
  int romanToInt(String s) {
  int result = 0;

  //table of Roman Symbols & according integer values
  List<String> romanNum = ["I", "V", "X", "L", "C", "D", "M"];
  List<int> romanNumValue = [1, 5, 10, 50, 100, 500, 1000];

  List<String> romanNumDiff = ["IV", "IX", "XL", "XC", "CD", "CM"];
  List<int> romanNumValueDiff = [4, 9, 40, 90, 400, 900];


//replace the romanNumDiff symbols
  for(int i=0;i<romanNumDiff.length ; i++)
  {
    if(s.contains(romanNumDiff[i]))
    {
      result+=romanNumValueDiff[i];
      s = s.replaceAll(romanNumDiff[i],'');
    }
  }
  
//replace the romanNum symbols
  s.split('').forEach((e) {
    result += romanNumValue[romanNum.indexWhere((element) => element == e)];
  });
  return result;
  }
}