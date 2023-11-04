import java.util.function.Function;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;

public class JavaCallTest2 {
    public static void funcType1(String str, Consumer<String> func) {
        System.out.println("funcType1 in");
        func.accept(str);
    }
    public static String funcType2(Supplier<String> func) {
        System.out.println("funcType2 in");
        return func.get();
    }
    public static double funcType3(double[] vals, Function<double[], Double> func) {
        System.out.println("funcType3 in");
        return func.apply(vals);
    }
}

