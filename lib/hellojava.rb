require 'java'
require 'hellojava.jar'
java_import 'java.lang.System'
java_import 'JavaCallTest'
java_import 'Hoge'

module HelloJavaLib

    def func_a()
        System.out.println("Hello, JRuby")
    end
    def func_b()
        p JavaCallTest.str1
    end
    def func_c(value1, value2)
        hoge = Hoge.new
        calc = hoge.getCalc(value1, value2)
        p calc.add
    end

    module_function :func_a
    module_function :func_b
    module_function :func_c

end

