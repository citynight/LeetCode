package 链表;

public class _206_反转链表 {

    public ListNode reverseList(ListNode head) {
        if (head==null || head.next == null) return head;

        ListNode newNode = reverseList(head.next);
        head.next.next = head;
        head.next = null;
        return newNode;
    }


    public ListNode reverseList2(ListNode head) {
        if (head==null || head.next == null) return head;
        // 创建新的newHead
        ListNode newHead = null;
        while (head != null) {
            // 先用临时变量存下一个头
            ListNode tmp = head.next;

            // 设置头的下一个为新的newHead
            head.next = newHead;
            // 把新的设置为头
            newHead = head;
            // 把从前的头后移
            head = tmp;
        }
        return newHead;
    }
}
