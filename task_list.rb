task_list= Hash.new

puts"whats your name?"
user = gets.chomp
puts"what do you want to add to your task list #{user}?"
task = gets.chomp
while task!="exit"
  if task_list.has_key?(task)
    task_list[task] +=1
 else
   task_list[task] =1
 end
  puts"would like to add anything else to your task #{user}?Type exit if you are done."
task = gets.chomp
end
task_list.each do |task,number|
  puts"#{user} #{task}"
end