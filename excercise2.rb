
# Create a class called Cat
# Every cat should have three attributes when they're created: name,
# preferred_food and meal_time
# Since we want these fields to be set for every Cat,
# you'll need to add an initialize method to your class
# You can use irb to test out your class by loading your class into the
# console using the load method (i.e. load 'cat.rb') and then creating
#  new instances of your class.
# Create two instances of the Cat class in your file
# They should each have unique names, preferred foods and meal times
# Let's assume meal_time is an integer from 0 to 23
# Add an instance method called eats_at that returns the hour of the day with
# AM or PM that this cat eats.
# The return value should be something like "11 AM" or "3 PM"
# Add another instance method called meow that returns a string of the cat
# telling you all about itself
# The return value should be something like "My name is Sparkles and I eat
# tuna at 11 AM"
# Call the meow method on each of the cats you instantiated in Step 3

class Cat
  def initialize (name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time.to_i
  end

  def eats_at
    if @meal_time < 12
      return "#{@meal_time} AM"
    else
      return "#{@meal_time} PM"
    end
  end
  def tell_me
    puts "Hi my name is #{@name}"
    puts "I like to eat #{@preferred_food}"
    puts "I eat at #{eats_at}"
  end
end

cat1 = Cat.new("Ki", "kibble", 6)
cat2 = Cat.new("Hilly", "toast", 7)
# puts cat1.eats_at
puts cat1.tell_me
