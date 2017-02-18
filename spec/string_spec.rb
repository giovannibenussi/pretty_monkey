RSpec.describe String do
    it "remove the consonants of the string" do
        text = 'hello world'
        expect(text.remove_consonants).to eq('eoo')
    end
end
