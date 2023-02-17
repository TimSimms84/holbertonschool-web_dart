String longestUniqueSubstring(String str) {
  var longest = '';
  var current = '';
  for (var i = 0; i < str.length; i++) {
    if (str.length - i <= longest.length) {
      break; // No point in continuing
    }
    var char = str[i];
    var index = current.indexOf(char);
    if (index == -1) {
      current += char;
    } else {
      if (current.length > longest.length) {
        longest = current;
      }
      current = current.substring(index + 1) + char;
    }
  }
  if (current.length > longest.length) {
    longest = current;
  }
  return longest;
}
