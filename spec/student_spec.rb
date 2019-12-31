class Student
   attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url
  @@all = []

def initialize(student_hash)

    student_hash.each do |attribute, value|
  end	      self.send("#{attribute}=", value)

    end
  def self.create_from_collection(students_array)	    @@all << self

  end