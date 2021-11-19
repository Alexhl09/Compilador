func float suma(int a, float b){
    return a + b;
}

main(){
    var a[10];
    a[2] = 10;
    
    for (int i : 0..<10){
        var x : int;
        input(x);
        a[i] = x;
    }
    print(a);
    var b : float;
    input(b);
    
    const int c = a[1];
    print(c);
    
    print(suma(c, suma(1, 2.4)));
}
