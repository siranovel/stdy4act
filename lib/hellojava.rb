require 'java'
require 'hellojava.jar'
java_import 'java.lang.System'
java_import 'JavaCallTest'
java_import 'JavaCallTest2'
java_import 'Hoge'
java_import 'java.util.HashMap'

# jrubyからjavaの呼び出し
module HelloJavaLib
    # Systemクラス使用
    #
    # @overload func_a
    #   @return [void]
    # @example
    #   HelloJavaLib::func_a()   => 'Hello, JRuby'
    def func_a()
        System.out.println("Hello, JRuby")
    end
    # 標準クラス以外の使用
    #
    # @overload func_b
    #   @return [void]
    # @example
    #   HelloJavaLib::func_b()   => 'str1'
    def func_b()
        p JavaCallTest.str1
        return
    end
    # 戻り値がオブジェクトの場合
    #
    # @overload func_c(value1, value2)
    #   @param [int] value1 value1の値
    #   @param [int] value2 value2の値
    #   @return [void]
    # @example
    #   HelloJavaLib::func_c(1, 2)   => 3
    def func_c(value1, value2)
        hoge = Hoge.new
        calc = hoge.getCalc(value1, value2)
        p calc.add
        return
    end
    # 引数に二次元配列の場合
    #
    # @overload func_v(fname, vals)
    #   @param [String] fname 文字列
    #   @param [Array]  vals 二次元の配列(double[][])
    #   @return [void]
    # @example
    #    vals = [
    #             [12.3, 22.5, 33.7, 44.6],
    #             [12.3, 22.5, 33.7, 44.6, 55.8],
    #           ]
    #    HelloJavaLib::func_v("fname.jpg", vals) 
    #    =>
    #     fname:fname.jpg size:2
    #     vals[0] size:4
    #     12.300000 22.500000 33.700000 44.600000
    #     vals[1] size:5
    #     12.300000 22.500000 33.700000 44.600000 55.800000
    def func_v(fname, vals)
        JavaCallTest.sub1(
          fname, vals.to_java(Java::double[])
        );
        return
    end
    # 引数にHashの場合
    #
    # @overload func_h(vals)
    #   @param [Hash] vals Hash(String, double[])
    #   @return [void]
    # @example
    #    vals = {
    #             "dt1" => [12.3, 22.5, 33.7, 44.6],
    #             "dt2" => [12.3, 22.5, 33.7, 44.6, 55.8],
    #           }
    #    HelloJavaLib::func_h(vals)
    #    =>
    #     hash in
    #     dt1 12.300000 22.500000 33.700000 44.600000
    #     dt2 12.300000 22.500000 33.700000 44.600000 55.800000
    def func_h(vals)
        o = HashMap.new
        vals.each{|k, v|
            o[k] = v.to_java(Java::double)
        }
        JavaCallTest.hash(o)
    end
    # 引数に関数型の場合
    class FuncTypes
        class << self
            # @overload func_type1(str, &func)
            #   @param [String] str  文字列
            #   @param [block]  func 関数型(引数:文字列, 戻り値:なし)
            #   @return [void]
            # @example
            #   HelloJavaLib::FuncTypes.func_type1("Hello") {|s|
            #     p s + "!!"
            #     next
            #   }
            #   =>
            #     funcType1 in
            #     "Hello!!"
            def func_type1(str, &func)
                JavaCallTest2.funcType1(str, func)
                return
            end
            # @overload func_type2(&func)
            #   @param [block] func 関数型(引数:なし, 戻り値:文字列)
            #   @return [void]
            # @example
            #   HelloJavaLib::FuncTypes.func_type2() {
            #     next "Hello"
            #   }
            #   =>
            #     funcType2 in
            #     "Hello"
            def func_type2(&func)
                p JavaCallTest2.funcType2(func)
                return
            end
            # @overload func_type3(vals, &func)
            #   @param [Array] vals double型の配列(duble[])
            #   @param [block] func 関数型(引数:double[], 戻り値:double)
            #   @return [void]
            # @example
            #   vals = [11, 22, 33, 44]
            #   HelloJavaLib::FuncTypes.func_type3(vals) {|xi|
            #     next xi.sum(0.0) / xi.length
            #   }
            #   =>
            #     funcType3 in
            #     27.5
            def func_type3(vals, &func)
                p JavaCallTest2.funcType3(vals.to_java(Java::double), func)
                return
            end

        end
    end
    module_function :func_a
    module_function :func_b
    module_function :func_c
    module_function :func_v
    module_function :func_h
end

