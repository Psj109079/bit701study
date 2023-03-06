package sa;

class Solution {
    public static int solution(int[][] lines) {
    	int[] arr = new int[200];
        int answer = 0;
        int min = 200;
        int max = 0;
        
        for(int i = 0; i < lines.length; i++) {
        	for(int j = lines[i][0] + 100; j < lines[i][1] + 100; j++) {
        		arr[j]++;
        		if(j > max) {
        			max = j;
        		}
        		if(j < min) {
        			min = j;
        		}
        	}
        }
        
        for(int i = min; i <= max; i++) {
        	if(arr[i] > 1) {
        		answer++;
        	}
        }
        return answer;
    }
    public static void main(String[] args) {
		int[][] a = {{0, 1}, {2, 5}, {3, 9}};
		
		System.out.println(solution(a));
	}
}
