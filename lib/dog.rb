class Dog
  # code goes here
  attr_reader :name, :mood
  attr_writer :mood

  # attr_accessor :dog

  def initialize(name)
    # @dog = dog
    @name = name
    @mood = "nervous"

  end
  
end

# class Cat
#   # code goes here
#   attr_reader :name, :mood
#   attr_accessor :mood
#
#   def initialize(name)
#     # @cat = cat
#     @name = name
#     @mood = "nervous"
#   end
#
#
#   # def name
#   #   @name = name
#   # end
# # end
