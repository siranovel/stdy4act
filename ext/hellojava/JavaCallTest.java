import java.util.ArrayList;
import java.util.Map;

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
    public static void hash(Map<String, double[]> vals) {
        System.out.println("hash in");
        for(Map.Entry<String, double[]> entry : vals.entrySet()) {
            System.out.print(entry.getKey());
            double[] v = entry.getValue();
            for(int i = 0; i < v.length; i++) {
                System.out.printf(" %f", v[i]);
            }
            System.out.println();
        }
    }
    public static IntervalEstim[] strut() {
        IntervalEstim[] ret = new IntervalEstim[2];

        ret[0] = new IntervalEstim(2.0, 3.0);
        ret[1] = new IntervalEstim(3.0, 4.0);
        return ret;
    }
    public static class IntervalEstim {
        private double min;
        private double max;
        public IntervalEstim(double min, double max) {
            this.min = min;
            this.max = max;
        }
        public double getMin() { return this.min; }
        public double getMax() { return this.max; }
    }
}

