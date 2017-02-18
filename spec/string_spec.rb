RSpec.describe String do
    it "remove the vocals of the string" do
        text = 'hello world'
        text = text.remove_vocals
        expect(text).to eq('hll wrld')
    end
    it "remove the vocals of the string (bang version)" do
        text = 'hello world'
        text.remove_vocals!
        expect(text).to eq('hll wrld')
    end
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
    it "should add margin with custom separator" do
        text = 'hello'
        text = text.margin(2, '-')
        expect(text).to eq('--hello')
    end
    it "shouldn't add margin because the passed parameter is negative" do
        text = 'hello'
        text = text.margin(-1)
        expect(text).to eq('hello')
    end
end
