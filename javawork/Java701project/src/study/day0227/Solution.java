package study.day0227;

class Solution {
    public int solution(String[] spell, String[] dic) {
        int answer = 2;
        for(int i = 0; i < dic.length; i++){
            if(dic[i].length() == spell.length) {
            	for(int j = 0; j < spell.length; j++) {
            		if(dic[i].indexOf(spell[j]) >= 0) {
            			answer = 1;
            		} else {
            			answer = 2;
            			break;
            		}
            	}
            } else {
            	continue;
            }
        }
        
        return answer;
    }
}
