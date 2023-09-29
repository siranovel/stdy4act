require 'java'
require 'hellojava.jar'
java_import 'java.lang.System'
java_import 'JavaCallTest'
java_import 'Hoge'

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

    module_function :func_a
    module_function :func_b
    module_function :func_c

end

