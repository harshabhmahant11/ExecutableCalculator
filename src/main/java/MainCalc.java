public class MainCalc {

    public static void main(String[] args) {
        System.out.println("6 + 3 = " + add(6, 3));
        System.out.println("6 - 3 = " + subtract(6, 3));
//		System.out.println("6 * 3 = " + multiply(6,3));
//		System.out.println("6 / 3 = " + divide(6,3));
    }

    public static int add(int a, int b) {
        return a + b;
    }

    public static int subtract(int a, int b) {
        return a - b;
    }

}
