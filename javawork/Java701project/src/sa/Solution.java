package sa;

class Solution {
    public String solution(String s) {
        String answer = "";
        String[] arr = s.split("");
        
        for(int i = 0, j = 0; i < arr.length; i++) {
        	if(arr[i].equals(" ")) {
        		answer += arr[i];
        		j = 0;
        	} else if(j == 0 || j % 2 == 0) {
        		answer += arr[i].toUpperCase();
        		j++;
        	} else {
        		answer += arr[i].toLowerCase();
        		j++;
        	}
        }
        
        return answer;
    }
}