package 链表;

public class _203_移除链表元素 {

    public static ListNode removeElements(ListNode head, int val) {

        ListNode node = head;
        ListNode preNode = null;
        while (node!=null) {
            if (node.val == val){
                if (node.next == null){
                    if (preNode == null){
                        return null;
                    }
                    preNode.next = null;
                    break;
                }else {
                    node.val = node.next.val;
                    node.next = node.next.next;
                    continue;
                }
            }
            preNode = node;
            node = node.next;
        }
        return head;
    }

    public ListNode removeElements1(ListNode head, int val) {
        ListNode header = new ListNode(-1);
        header.next = head;
        ListNode cur = header;
        while(cur.next != null){
            if(cur.next.val == val ){
                cur.next = cur.next.next;
            }else{
                cur = cur.next;
            }
        }
        return header.next;
    }

    public static void main(String[] args) {
        ListNode node = new ListNode(1);
        node.next = new ListNode(1);
//        node.next.next = new ListNode(6);
//        node.next.next.next = new ListNode(3);
//        node.next.next.next.next = new ListNode(4);
//        node.next.next.next.next.next = new ListNode(5);
//        node.next.next.next.next.next.next = new ListNode(6);

         removeElements(node,1);

        System.out.printf("hhh");
    }
}
