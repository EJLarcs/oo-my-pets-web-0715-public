class Cat
  # code goes here
  attr_reader :name, :mood
  attr_accessor :mood

  def initialize(name)
    # @cat = cat
    @name = name
    @mood = "nervous"
  end


  # def name
  #   @name = name
  # end
end
