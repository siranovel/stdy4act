require 'hellojava'

class HelloJavaLibTest
    def func_aTest()
        HelloJavaLib::func_a()
    end
    def func_bTest()
        HelloJavaLib::func_b()
    end
    def func_cTest()
        HelloJavaLib::func_c(1, 2)
    end
end

tst = HelloJavaLibTest.new
tst.func_aTest()
tst.func_bTest()
tst.func_cTest()
