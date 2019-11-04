package 链表;

public class _141_环形链表 {
    public boolean hasCycle(ListNode head) {
        ListNode slow = head;

        // 判断参数为null的情况
        if (head == null) {
            return false;
        }

        ListNode fast = head.next;
        while (fast != null && fast.next != null) {
            if (fast == slow){
                return true;
            }
            fast = fast.next.next;
            slow = slow.next;
        }
        return false;
    }


    public static void main(String[] args) {
        System.out.println(this.hasCycle(null));
    }
}
