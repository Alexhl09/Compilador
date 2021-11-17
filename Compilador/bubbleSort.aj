 // A function to implement bubble sort
func int[7] bubbleSort(int arr[7], int n)
{
    var a = 8;

    for (var i = 0; i < n-1; a = 1){
        for (var j = 0; j < n-i-1; a = 1){
            if (arr[j] > arr[j+1]){
                var temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
            j = j+1;
        }
        i = i+1;
    }
    return arr;
}
//
///* Function to print an array */
//func printArray(int arr[7], int size)
//{
//    var p = 0;
//   // print(arr);
////    for (var i = 0; i < size; p = 1 ){
////        print(arr[i]);
////        i = i + 1;
////    }
//}
 
main()
{

   
    var arr[7] = {64, 34, 25, 12, 22, 11, 90};
    print("Unsorted array:");
    print(arr);
    var n = 7;
    arr = bubbleSort(arr, n);
    print("Sorted array:");
    print(arr);
}
 
