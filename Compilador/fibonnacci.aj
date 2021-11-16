
main() {
    var n = 100;
    var t1 = 0;
    var t2 = 1;
    var nextTerm = 0;
    var a = 0;
    for (var i = 1; i <= n; a = a + 1) {
        if(i == 1) {
            print(t1);
        } else{
            if  (i == 2)  {
                print(t2);
            }else{
                nextTerm = t1 + t2;
                t1 = t2;
                t2 = nextTerm;
                print(nextTerm);
            }
        }
        i = i + 1;
    }
    
}
