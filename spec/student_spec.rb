class Student


  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 	  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url


  @@all = []	  @@all = []


  def initialize(student_hash)	  def initialize(student_hash)

    student_hash.each do |attribute, value|
  end	      self.send("#{attribute}=", value)

    end
  def self.create_from_collection(students_array)	    @@all << self

  end
  end	

  def self.create_from_collection(students_array)
  def add_student_attributes(attributes_hash)	    students_array.each do |student_hash|

      Student.new(student_hash)
  end	    end

  end
  def self.all	

  def add_student_attributes(attributes_hash)
  end	    attributes_hash.each do |attr, value|
end	      self.send("#{attr}=", value)

    end
    self
  end

  def self.all
    @@all
  end
end 