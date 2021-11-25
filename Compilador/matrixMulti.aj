

main(){
    var matrix1[2][2] = {1,2; 4,6};
    var matrix2[2][2] = {10, 11; 20, 21};
    var res[2][2] = {0,0;0,0};
    for(var i = -1; i < 1; i = i + 1){
        for(var j = -1; j < 1; j = j + 1){
        // res[i][j] = 0;
            for(var k = -1; k < 1; k = k + 1){
               
                res[i][j] = res[i][j] + matrix1[i][k] * matrix2[k][j];
            }
            
        }
    }
    
    print(res);
   
}
