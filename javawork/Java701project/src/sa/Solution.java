package sa;

import java.util.HashMap;

class Solution {
    public int solution(int[] nums) {
        int answer = 0;
        HashMap<Integer, Integer> map = new HashMap<>();
        int cnt = 0;
        for(int i = 0; i < nums.length; i++) {
        	map.put(nums[i], cnt++);
        }
        
        if((nums.length / 2) <= map.size()) {
        	answer = nums.length / 2; 
        } else {
        	answer = map.size();
        }
        return answer;
    }
}
