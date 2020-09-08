1.

#starting out kind of rough today.

def lab(string)
  if /lab/.match(string)                            #YOOOOO, we can call downcase on the string parameter!? Tested and confirmed!!
    puts "#{string} has lab in it!"                 #leftover note from our original method definition before we moved downcase below
  else
    puts "lab ain't in that word, foo!"
  end 
end 

arr = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]       

arr.each { |word| lab(word.downcase) }                       #I was a little extra here, hehe.

#this method is perfect - doesn't affect the original string, works regardless of upper/lowercase. Excellent job.
#book uses the =~ operator to check instead of the .match method - either one works. The .match method evaluates to a boolean, so essence is same.
#book solution below for reference.

2.

#won't it be an error because the block isn't being called in the method definition?

#somewhat right...you were correct about the call being missed, but /nothing/ is printed and a 'proc object' is returned.
                                                                                                  | 
                                                                                    #I hope we learn more about these soon, because this is 
                                                                                    #almost completely meaningless to me right now..
                                                                                    
3.

#exception handling is the process by which we modify code to account for input getting corrupted, nils, incorrect user input
#allows us ways to manage issues caused by the above, such as log generation, having code proceed regardless, so on

4.

#literally just putting .call after block in the method definition...I was correct, but I checked the solution because I was paranoid.

5.

#no ampersand for the block being used as the 'parameter'

#I was correct.