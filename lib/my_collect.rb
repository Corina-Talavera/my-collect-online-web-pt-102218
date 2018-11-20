def my_collect
  languages = ["ruby", "javascript", "python", "objective-c"]
  students =["Tim Jones", "Tom Smith", "Sophie Johnson", "Antoin Miller"]

def can_handle_an_empty_collection
    empty_array = []
    counter = 0
      my_collect(empty_array) do |x|
        counter += 1
      end
  end

def     
    my_collect(languages) do |language|
      expect(language).to_not eq(nil)
    end
  end

    my_collect(collection) do |lang|
  lang.upcase
end
# => ["RUBY", "JAVASCRIPT", "PYTHON", "OBJECTIVE-C"]
  end

  it 'does not modify the original collection' do
    my_collect(languages) do |language|
      language.upcase
    end
    expect(languages).to eq(['ruby', 'javascript', 'python', 'objective-c'])
  end

  it "yields the correct element from the given collection, in this case students" do
    my_collect(students) do |student|
      expect(student).to_not eq(nil)
    end
  end

  it "returns a new collection of appropriately modified elements, in this case student first names" do
    expect(my_collect(students) do |student|
      student.split(" ").first
    end).to eq(["Tim", "Tom", "Sophie", "Antoin"])
  end

  it 'does not modify the original collection' do
    my_collect(students) do |student|
      student.split(" ").first
    end
    expect(students).to eq(['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller'])
  end
end
