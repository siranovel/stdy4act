require 'hellojava'

RSpec.describe HelloJavaLib do
    it 'func_a test' do
        expect(HelloJavaLib::func_a()).to eq nil
    end
    it 'func_b test' do
        expect(HelloJavaLib::func_b()).to eq nil
    end
    it 'func_c test' do
        expect(HelloJavaLib::func_c(2, 3)).to eq nil
    end
end

