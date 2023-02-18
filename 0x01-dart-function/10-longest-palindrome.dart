import '9-palindrome.dart';


String longestPalindrome(String s)
{
  if (isPalindrome(s))
    return s;
  String longest = "";
  for (var i = 0; i < s.length; i++) {
    for (var j = i + 1; j < s.length; j++) {
      var substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring;
      }
    }
  }
  // if (longest.isEmpty) {
  //   return "none";
  // }
  return longest.isEmpty ? "none" : longest;
}


