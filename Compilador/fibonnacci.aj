const x = "hola mundo";

func void holaMundo() {
	print(x);
}

main() {
<<<<<<< HEAD
	var string y = "AJ dice: ";
    print(y, holaMundo());
=======
    var n = 50;
    var t1 = 0;
    var t2 = 1;
    var nextTerm = 0;
    var a = 0;
    for(int i : 1..<n){
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
    }    
>>>>>>> main
}


