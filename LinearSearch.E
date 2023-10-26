import java.util.Scanner;

public class LinearSearch {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the number of elements in the array: ");
        int num = input.nextInt();

        int[] arr = new int[num];
        System.out.println("Enter the elements of the array:");

        for (int i = 0; i < num; i++) {
            arr[i] = input.nextInt();
        }

        System.out.print("Enter the element to search for: ");
        int target = input.nextInt();

        int index = linearSearch(arr, target);

        if (index != -1) {
            System.out.println("Element found at index: " + index);
        } else {
            System.out.println("Element not found in the array.");
        }
    }

    public static int linearSearch(int[] arr, int target) {
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] == target) {
                return i; 
            }
        }
        return -1; 
    }
}