 // A function to implement bubble sort
func int[7] bubbleSort(int arr[7], int n)
{
    var a = 8;

    for (var i = -1; i < n - 2; i = i+1){
        for (var j = -1; j < n - i - 2; j = j+1){
            if (arr[j] > arr[j+1]){
                var temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
    return arr;
}

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
 
