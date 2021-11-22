func int[5] bubbleSort(int arr[5], int n)
{
    var a = 8;

    for (var i = 0; i < n - 1; a = 1){
        for (var j = 0; j < n - i - 1; a = 1){
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

func int kthSmallest(int arr[5], int n, int k)
{
    if(k > n){
        return 1000;
    }
    print(arr);
    // Sort the given array
    var arrayReturn[5] = bubbleSort(arr,n);
    print(arrayReturn);
    // Return k'th element in the sorted array
    return arrayReturn[k - 1];
}

// Driver program to test above methods
main()
{
	var s[2];
	input(s[1]);
	print(s[0]);
print(s[1]);
    int var arr[5] = { 12, 3, 5, 7, 19 };
	
    const int n = 5;
    const int k = 2;
    print("K th smallest element is ");
    print(kthSmallest(arr, n, k));
}