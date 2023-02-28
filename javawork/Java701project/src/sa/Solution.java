package sa;

class Solution {
    public static int solution(String[] babbling) {
        int answer = 0;
        String[] arr = {"aya", "ye", "woo", "ma"};
        
        for(int i = 0; i < babbling.length; i++) {
        	for(int j = 0; j < arr.length; j++) {
        		babbling[i] =babbling[i].replaceFirst(arr[j], ".");
        	}
        }
        
        for(int i = 0; i < babbling.length; i++) {
        	babbling[i] =babbling[i].replaceAll(".", "");
        	if(babbling[i].length() == 0) {
        		answer++;
        	}
        }
        return answer;
    }
    public static void main(String[] args) {
    	String[] arr = {"aya", "yee", "u", "maa", "wyeoo"};
    	
    	System.out.println(solution(arr));
	}
}