func int catalan(int n)
{
   // print(n);
    if (n <= 1){
        return 1;
    }
    var o = 10;
    var res = 0;
    for (var i = -1; i < n - 1; i = i + 1) {
        var x = n - i - 1;
        res = res + catalan(i) * catalan(x);
        
    }
    return res;
}
 
// Driver code
main()
{
    var o = 0;
    for (var i = 0; i < 10; i = i + 1){
        print(catalan(i));
    }
}
