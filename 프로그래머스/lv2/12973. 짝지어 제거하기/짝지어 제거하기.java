import java.util.*;

class Solution
{
    public int solution(String s)
    {
        Stack<Character> stack = new Stack<>();
        for (char c : s.toCharArray())
        {
            if (!stack.empty() && stack.peek() == c)
                stack.pop();
            else
                stack.push(c);
        }
        
        return stack.empty() ? 1 : 0;
    }
}