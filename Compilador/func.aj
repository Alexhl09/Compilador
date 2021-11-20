func float suma(int a, float b) {
    return a + b;
}

main(){
    var a[10];
    a[2] = 10;
    
    int var x;
    int var y;
    
    input(x,y);
    print(x,y);
    
    for (int i : 0..<10){
        int var x;
        input(x);
        a[i] = x;
    }
    print(a);
    float var b;
    input(b);
    
    const int c = a[1];
    print(c);
    
    print(suma(c, suma(1, 2.4)));
}
