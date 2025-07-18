/*
Valid Anagram

Given two strings s and t, return true if t is an anagram of s, and false otherwise.

 

Example 1:

Input: s = "anagram", t = "nagaram"

Output: true

Example 2:

Input: s = "rat", t = "car"

Output: false

 

Constraints:

1 <= s.length, t.length <= 5 * 104
s and t consist of lowercase English letters.

 */
class Solution {
  bool isAnagram(String s, String t) {
    if(s.length != t.length) return false;
    Map<String,int> countOfS={};
    Map<String,int> countOfT={};
    int length = s.length;
    List<String> sChars= s.split("");
    List<String> tChars= t.split("");

    for(int i=0; i<length; i++){
        countOfS[sChars[i]]= (countOfS[sChars[i]]??0)+1;
        countOfT[tChars[i]]= (countOfT[tChars[i]]??0)+1;

    }
    if(countOfS.length != countOfT.length) return false; 
    for(var key in countOfS.keys){
        if(countOfS[key]!= countOfT[key]) return false;
     }
    return true;
  }
}