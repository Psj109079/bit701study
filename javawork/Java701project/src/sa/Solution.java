package sa;

class Solution {
    public static int solution(int chicken) {
        int answer = chicken / 10;
        int coupon = chicken % 10;
        
        for(int i = 1; i <= chicken / 10; i++) {
        	if(i % 10 == 0) {
        		answer++;
        		coupon++;
        	}
        }
        return coupon;
    }
    public static void main(String[] args) {
		System.out.println(solution(1081));
	}
}