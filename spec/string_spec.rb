RSpec.describe String do
    it "remove the consonants of the string" do
        text = 'hello world'
        text = text.remove_consonants
        expect(text).to eq('eoo')
    end
    it "remove the consonants of the string (bang version)" do
        text = 'hello world'
        text.remove_consonants!
        expect(text).to eq('eoo')
    end
    it "should add margin" do
        text = 'hello'
        text = text.margin(2)
        expect(text).to eq('  hello')
    end
end
