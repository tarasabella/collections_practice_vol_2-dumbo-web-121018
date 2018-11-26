def begins_with_r(array)
     array.each |word|
     do word[0] ==
      do |word| word.initial == "r"
    end 
def begins_with_r(array)
  flag = true
  array.each do |element|
    flag = false if element[0] != "r"
  end
  flag
end

def contain_a do
    # Question 2

    it "return all elements that contain the letter 'a'" do
      expect(contain_a(["earth", "fire", "wind", "water", "heart"])).to eq(["earth", "water", "heart"])
    end

  end

  describe '#first_wa' do

    # Question 3

    it "Return the first element that begins with the letters 'wa'" do
      expect(first_wa(["candy", :pepper, "wall", :ball, "wacky"])).to eq("wall")
    end

  end

  describe '#remove_non_strings' do

    # Hint: Use the method "class"  "blake".class

    # Question 4

    it "remove anything that's not a string from an array" do
      expect(remove_non_strings(["blake", 1, :hello])).to eq(["blake"])
    end

  end

  describe '#count_elements' do

    # Question 5

    it 'count how many times something appears in an array' do
      expect(count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])).to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}])
    end

  end

  describe '#merge_data' do

    # Question 6

    it 'combines two nested data structures into one' do
      expect(merge_data(keys, data)).to eq(merged_data)
    end

  end

  describe '#find_cool' do

    # Question 7

    it 'find all cool hashes' do
      expect(find_cool(cool)).to eq([{:name => "blake",:temperature => "cool"}])
    end

  end

  describe '#organize_schools' do

    # Question 8

    it 'organizes the schools by location' do
      expect(organize_schools(schools)).to eq(organized_schools)
    end

  end

end
def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end

def begins_with_r(array)
  flag = true
  array.each do |element|
    flag = false if element[0] != "r"
  end
  flag
end

def contain_a(array)
  container = []
  array.each do |element|
    container << element if element.include?("a")
  end
  container
end

def remove_non_strings(array)
  container = []
  array.each do |element|
    container << element if element.is_a?(String)
  end
  container
end

def first_wa(array)
  first_wa = nil
  array.each do |element|
    if element.match(/wa/)
      first_wa = element
      break
    end
  end
  first_wa
end

def find_cool(array)
  container = []
  array.each do |element|
    container << element if element[:temperature] == "cool"
  end
  container
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(arr1, arr2)
  arr2[0].map do |name, prop_hash|
    new_prop_hash = {}
    arr1.each do |new_attr_hash|
      if new_attr_hash[:first_name] == name
        new_prop_hash = prop_hash.merge(new_attr_hash)
      end
    end
    new_prop_hash
  end
end