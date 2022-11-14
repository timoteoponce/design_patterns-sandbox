class Subscriptor
  attr_accessor :full_name, :email, :age

  def initialize(full_name, email, age)
    @full_name = full_name
    @email = email
    @age = age
  end

  def persist
    puts "[#{self.class}] I will be persisting myself to a file"
  end
end
