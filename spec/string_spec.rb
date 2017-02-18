RSpec.describe String do
    it "remove the consonants of the string" do
        text = 'hello world'
        expect(text.remove_consonants).to eq('eoo')
    end
    it "remove the consonants of the string (bang version)" do
        text = 'hello world'
        text.remove_consonants!
        expect(text).to eq('eoo')
    end
end
