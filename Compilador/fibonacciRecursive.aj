func int fib(int n) {
    if (n <= 1) {
        return n;
    }else{
        return fib(n - 1) + fib(n - 2);
    }
    return 1;
}
 
main ()
{
    var p = 10;
    p >= 100 ? p = 100 :  p = -1;
    print(p);
    for (int i : 0..<10){
        print(i);
    }
    var n = 10;
    print(fib(n));
}
