import java.util.ArrayList;

public class JavaCallTest {
    public static String str1() {
        return "str1";
    }
    public String str2() {
        return "str2";
    }
    public static void sub1(String fname, double[][] vals) {
        System.out.printf("fname:%s size:%d\n", fname, vals.length);
        for (int i = 0; i < vals.length; i++) {
            System.out.printf("vals[%d] size:%d\n", i, vals[i].length);
            for (int j = 0; j < vals[i].length; j++) {
                System.out.printf(" %f", vals[i][j]);
            }
            System.out.println();
        }
    } 
}

