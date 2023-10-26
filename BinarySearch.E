import java.util.Scanner;

public class BinarySearch {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter the number of elements in the array: ");
        int num = scanner.nextInt();

        int[] array = new int[num];

        System.out.println("Enter the sorted elements of the array:");
        for (int i = 0; i < num; i++) {
            array[i] = scanner.nextInt();
        }

        System.out.print("Enter the number you want to search for: ");
        int target = scanner.nextInt();

        int result = binarySearch(array, target);

        if (result == -1) {
            System.out.println("The element is not in the array.");
        } else {
            System.out.println("The element is at index: " + result);
        }
    }

    public static int binarySearch(int[] array, int target) {
        int left = 0;
        int right = array.length - 1;

        while (left <= right) {
            int mid = left + (right - left) / 2;

            if (array[mid] == target) {
                return mid;
            }

            if (array[mid] < target) {
                left = mid + 1;
            } else {
                right = mid - 1;
            }
        }

        return -1; 
    }
}