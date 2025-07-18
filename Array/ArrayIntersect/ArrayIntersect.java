package Array.ArrayIntersect;

/*
Intersection of Two Arrays II

Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must appear as many times as it shows in both arrays and you may return the result in any order.

 

Example 1:

Input: nums1 = [1,2,2,1], nums2 = [2,2]
Output: [2,2]
Example 2:

Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
Output: [4,9]
Explanation: [9,4] is also accepted.
 

Constraints:

1 <= nums1.length, nums2.length <= 1000
0 <= nums1[i], nums2[i] <= 1000

 */

import java.util.*;

class Solution {
    public int[] intersect(int[] nums1, int[] nums2) {
        ArrayList<Integer > results=new ArrayList<>();
        Map<Integer , Integer > counts=new HashMap<>();
        for(Integer  num : nums1){
            counts.put(num, counts.getOrDefault(num,0)+1);
        }
        for(Integer  num : nums2){
            if(counts.containsKey(num)&& counts.get(num)>0){
                results.add(num);
                counts.put(num,counts.get(num)-1);
            }
        }
        int[] resultsArray=new int[results.size()];
        for (int i = 0; i < results.size(); i++) {
            resultsArray[i] = results.get(i);
        }

        return resultsArray; 
    }
}