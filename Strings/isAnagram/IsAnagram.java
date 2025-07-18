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

import java.util.*;

class Solution {
    public boolean isAnagram(String s, String t) {
    if(s.length() != t.length()) return false;
    Map<Character,Integer> counts= new HashMap<>();

    for(char c : s.toCharArray()){
        counts.put(c, counts.getOrDefault(c, 0)+1);
    }
    for(char c : t.toCharArray()){
        if(!counts.containsKey(c)) return false;
        counts.put(c, counts.get(c)-1);
        if(counts.get(c)==0) counts.remove(c);

    }
    return counts.isEmpty();
    }
}
