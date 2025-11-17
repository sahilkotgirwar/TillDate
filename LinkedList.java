public class LinkedList {
    
    public static class Node{
        int data;
        Node next;

        public Node(int data){
            this.data=data;
            this.next=null;
        }

    }

    public static Node head;
    public static Node tail;
    public static int size;

    public void addFirst(int data){
        //step 1
        Node newNode = new Node(data);
        size++;//for size
        if(head==null){
            head=tail=newNode;
            return;
        }
        //step 2
        newNode.next = head;

        //step 3
        head = newNode;

    }

    public void addLast(int data){
        //step 1
        Node newNode = new Node(data);
        size++;//for size
        if(head==null){
            head=tail=newNode;
            return;
        }

        //step 2
        tail.next=newNode;

        //step 3
        tail=newNode;
    }

    public void print(){
        if(head==null){
            System.out.println("Empty LL");
            return;
        }
        
        Node temp = head;
        while(temp!=null){
        System.out.print(temp.data+" -> ");
        temp=temp.next;
        }
        System.out.println("null");
    }

    public void add(int idx,int data){
        if(idx==1){
            addFirst(data);
            return;
        }
        
        Node newNode= new Node(data);
        size++;//for size
        Node temp=head;
        int i=1;
        while(i<idx-1){
            temp=temp.next;
            i++;
        }
        //i==idx-1; temp -> prev

        newNode.next = temp.next;
        temp.next = newNode;
    }

    public int removeFirst(){
        if(size==0){
            System.out.println("LL is empty");
        }else if(size==1){
            int val=head.data;
            head=tail=null;
            return val;
        }
        int val=head.data;
        head=head.next;
        size--;
        return val;
    }

    public int removeLast(){
        if(size==0){
            System.out.println("LL is empty");

        }else if(size==1){
            int val=head.data;
            head=tail=null;
            return val;
        }

        //prev -> size-2
        Node prev = head;
        for(int i=0;i<size-2;i++){
            prev = prev.next;
        }
        
        int val = prev.next.data;
        prev.next=null;
        tail=prev;
        size--;
        return val;

    }

    public int ItrSearch(int key){
        Node temp=head;
        int idx=0;

        while(temp!=null){
            if(temp.data==key){
                return idx;
            }
            temp=temp.next;
            idx++;
        }

        //if key not found

        return -1; 
    }

    public int helper(Node head,int key){
        if(head==null){
            return -1;
        }

        if(head.data==key){
            return 0;
        }
        int idx=helper(head.next,key);
        if(idx==-1){
            return -1;
        }
        return idx+1;
    }

    public int RecSearch(int key){

        return helper(head, key);

        
    }



 
    public static void main(String args[]){

        LinkedList ll = new LinkedList();
        ll.addFirst(2);
        ll.addFirst(1);
        ll.addLast(3);
        ll.addLast(4);
        ll.addLast(5);
        ll.add(1, 9);
        ll.print();
        System.out.println(ll.size);
        ll.removeFirst();
        ll.print();
        ll.removeLast();
        ll.print();
        System.out.println(ll.RecSearch(3));
        System.out.println(ll.RecSearch(10));
    }

}
