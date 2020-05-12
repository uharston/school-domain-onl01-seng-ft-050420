#Domain Model

# class School #School is the MODEL
#
#   attr_reader :name,
#   def initialize(name}) #School_name is default information req. on initialization of a new INSTANCE
#     @name = name
#
#     # @@roster = roster
#   end
#   def add_student(student, grade_num)
#
#   end
#   # def roster=(roster) #SETTER or WRITER
#   #   @@roster << roster
#   # end
#   def roster #GETTER or READER
#     @roster
#   end
# end
class School
  #Create an instance on initialization for #names and #roster
  def initialize(name, roster={})
    @name = name
    @roster = roster
  end
    #Create a READER for #name
  def name
    @name
  end
  #Create a READER for #roster
  def roster
    @roster
  end
  #Create a WRITER for #add_student
  def add_student(student, grade_num) #adds student into roster hash
  if  @roster[grade_num]
   @roster[grade_num] << student
 else
   @roster[grade_num] = [student]
  end
end

def grade(grade_num)
  @roster[grade_num]
  # classroom = []
  # @roster.each do |grade, students|
  #   if grade == grade_num
  #     classroom << @roster[grade]
  #   end
  # end
    # classroom
end

def sort
@roster.sort.to_h
end


end
class School
  #Create an instance on initialization for #names and #roster
  def initialize(name, roster={})
    @name = name
    @roster = roster
  end
    #Create a READER for #name
  def name
    @name
  end
  #Create a READER for #roster
  def roster
    @roster
  end
  #Create a WRITER for #add_student
  def add_student(student, grade_num) #adds student into roster hash
  if  @roster[grade_num]
   @roster[grade_num] << student
 else
   @roster[grade_num] = [student]
  end
end

def grade(grade_num)
  @roster[grade_num]
  # classroom = []
  # @roster.each do |grade, students|
  #   if grade == grade_num
  #     classroom << @roster[grade]
  #   end
  # end
    # classroom
end

def sort
sorted_grades = {} #empty hash for the return
@roster.collect do |grades, students| #iterate though roster
  sorted_students_array = @roster[grades].sort#sorts students alphabetically into an array
  sorted_grades[grades] = sorted_students_array #adds the key/value or grade and respective students into alphabetically order to new hash
end
sorted_grades
end


end
#
# hash = {9=>["uriah"], 3=>["laura"], 5=>["dany"]}
# hash.select {|grade_num , student| puts grade_num if grade_num == 3 }
# hash.each {|name , age|  puts hash[name] if name == 3 }
#
# def grade(grade_num)
#   puts hash[grade_num]
#   end
#
#   def sort
#   sorted_grades = {}
#   @roster.collect do |grades, students|
#     sorted_grades[grades] = @roster[grades].sort
#   end
#   # classroom = []
#   # hash.each do |grade, students|
#   #   if grade == grade_num
#   #     classroom << hash[grade]
#   #   end
#   # end
#
#
#
#
#     # @roster.each do |grade, student_names|
#     #   #Checks to see if there any existing keys that match the arguement that was passed into grade_num
#     #   if grade == grade_num
#     #     #If true, then it means that there is an existing array and that all that is needed is to push
#     #     #the newest student into the class or grade
#     #     @roster[grade] << student
#     #   else #if false, then that means there is no key for that grade_num and we need to assign a new key
#     #     @roster[grade_num] = [student]
#     #   end
#     # end
