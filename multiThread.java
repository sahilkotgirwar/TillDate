class MyThread extends Thread {
    @Override
    public void run() {
        while(true){
            System.out.println("Thread is running");
        }
        
    }
}
class MyThread2 extends Thread{
    @Override
    public void run(){
        while(true){
             System.out.println("Thread is sad");
        }
       
    }
}

class MyRunnable1 implements Runnable{
    public void run(){
        for(int i = 0 ;i<100;i++){
            System.out.println("This is Runn");
        }
    }
}

class MyRunnable2 implements Runnable{
    public void run(){
        for (int i = 0;i<100;i++) {
            System.out.println("This is able");   

        }
    }
}
public class multiThread{
    public static void main(String[] args) {
       /*MyThread t1 = new MyThread();
         MyThread2 t2 = new MyThread2();
         t1.start();
         t2.start();
         */

        MyRunnable1 p1 = new MyRunnable1();
        Thread s1 = new Thread(p1);
        MyRunnable2 p2 = new MyRunnable2();
        Thread s2 = new Thread(p2);

        s1.start();
        s2.start();
    }
}