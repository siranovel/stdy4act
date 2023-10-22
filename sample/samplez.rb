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
end

