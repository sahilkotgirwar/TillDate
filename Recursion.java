public class Recursion {
    public static void dec_print(int n){
        if(n==1){
            System.out.println(n);
            return;
        }
       
        System.out.print(n +" ");
        dec_print(n-1);

        
    }

    public static void inc_print(int n){
        if(n==1){
            System.out.print(n + " ");
            return;
        }
        inc_print(n-1);
        System.out.print(n + " ");
        
    }

    public static int factorial(int n){
        if(n==0){
            
            return 1;
        }
        int fn=n*factorial(n-1);
        return fn;
    }

    public static int sumN(int n){
        if(n==1){
            return 1;
        }
        int sum = n+sumN(n-1);
        return sum;
    }
    public static int fib(int n){
        if(n==0 || n==1){
            return n;
        }
        int fnm1 = fib(n-1);
        int fnm2 = fib(n-2);
        int fn = fnm1 + fnm2;
        return fn;
    }
    public static int FirstOcc(int arr[],int key,int i){
        if(i==arr.length){
            return -1;
        }
        if(arr[i]==key){
            return i;
        }
        return FirstOcc(arr, key, i+1);

    }
    public static int LastOcc(int arr[],int key,int i){
        if(i==arr.length){
            return -1;
        }
        if(arr[i]==key){
            return i;
        }
        return FirstOcc(arr, key, i-1);
    }

    public static int power(int x, int n){
        if(n==0){
            return 1;
        }

        return x*power(x,n-1);
    }
    public static void PrintBinString(int n, int lastPlace, String str){
        if(n==0){
            System.out.println(str);
            return;
        }
        PrintBinString(n-1,0, str+"0");
        if (lastPlace==0){
            PrintBinString(n-1, 1, str+"1");
        }

    }

    public static void main(String[] args) {
        int fac = fib(5);
        System.out.println(fac);
    }
}
