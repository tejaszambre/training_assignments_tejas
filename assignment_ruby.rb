puts "enter no of student"

num_of_student = gets.to_i

i= num_of_student

puts "enter the details in sequence name marks attendance"

marks={}
attendance={}
defaulters={}

while i>0
	name = gets.chomp
	mar = gets.to_i
	atten = gets.to_i

	marks[name] = mar
	attendance[name] = atten
	puts "next"
	i=i-1
end

max_marks = marks.values.max
topper = marks.key(max_marks)
puts "topper is #{topper}"

i= num_of_student

while i>0
	if(attendance.values[i-1]<75)
		defaulters[attendance.keys[i-1]] = attendance.values[i-1]
	end
	i=i-1
end

sum=0
avg=0
i=num_of_student
while i>0
	sum = sum + marks.values[i-1]
	i=i-1
end
avg = sum / num_of_student

puts defaulters

puts avg

