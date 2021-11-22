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
    var n = 7;
    print(fib(n));
}
