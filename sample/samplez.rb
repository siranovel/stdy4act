require 'hellojava'

RSpec.describe HelloJavaLib do
    it '#func_a' do
        expect(HelloJavaLib::func_a()).to eq nil
    end
    it '#func_b' do
        expect(HelloJavaLib::func_b()).to eq nil
    end
    it '#func_c' do
        expect(HelloJavaLib::func_c(2, 3)).to eq nil
    end
    it '#func_d' do
        vals = [
                 [12.3, 22.5, 33.7, 44.6],
                 [12.3, 22.5, 33.7, 44.6, 55.8],
               ]
        expect(
          HelloJavaLib::func_d("fname.jpg", vals)
        ).to eq nil
    end
    describe HelloJavaLib::FuncTypes do
        it '#func_type1' do
            expect(
              HelloJavaLib::FuncTypes.func_type1("Hello") {|s|
                p s + "!!"
                next
              }
            ).to eq nil
        end
        it '#func_type2' do
            expect(
              HelloJavaLib::FuncTypes.func_type2() {
                next "Hello"
              }
            ).to eq nil
        end
        it '#func_type3' do
            vals = [11, 22, 33, 44]
            expect(
              HelloJavaLib::FuncTypes.func_type3(vals) {|xi|
                next xi.sum(0.0) / xi.length
              }
            ).to eq nil
        end
    end
end

