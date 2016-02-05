#spec/core_extensions_spec.rb

require "spec_helper"

describe Array do
	context "#all_empty?" do
		it "returns true if all elements of the Array are empty" do
			expect (["", "", ""].all_empty?).to be_true
		end

		it "returns false if some of the Array elements are not empty" do
			expect(["", 1, "", Object.new, :a].all_empty?).to be_false
		end

		it "returns true for an empty Array" do
			expect ([].all_empty?).to be_true
		end
	end

	context "#all_same?" do
		it "returns true if all elements of the Array are the same" do
			expect (["A", "A", "A"].all_same?).to be_true
		end

		it "returns false if some of the Array elements are not the same" do
			expect (["", 1, "", Object.new, :a].all_same?).to be_false
		end

		it "returns true for an empty Array" do
			expect ([].all_same?).to be_true
		end
	end

	context "#any_empty?" do
		it "returns true if any element of the Array is empty" do
			expect(["", "b", "c"]).to be_true
		end

		it "returns false if no element of the Array is empty" do
			expect (["a", "b", "c"]).to be_false
		end

		it "returns true for an empty Array" do
			expect(["", "", ""]).to be_true
		end
	end

	context "#none_empty" do
		it "returns true if all elements of the Array are not empty" do
			expect(["u", "v", "w"]).to be_true
		end

		it "returns false if some elements of the Array are empty" do
			expect (["", "x", "y"]).to be_false
		end

		it "returns false if all elements of the Array are empty" do
			expect (["", "", ""]).to be_false
		end
	end
end

