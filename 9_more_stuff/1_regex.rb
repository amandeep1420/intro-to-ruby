=begin

Time to briefly touch on some other stuff that you'll see when dealing with Ruby. I cannot stress enough the fact that this is a brief 
introduction to these topics - they're all worthy of their own book, but we're just going to discuss them for a hot minute.

First, regex.

Regex stands for "regular expression". A regular expression is a sequence of characters that form "pattern matching rules", which is then applied 
to a string to look for matches. Regular expressions have many uses - see below for examples:

1. Check if the pattern "ss" appears in the string "Mississippi".

2. Print out the 3rd word of each sentence from a list of sentences.

3. Find and replace all instances of "Mrs" with "Ms" in a sentence.

4. Does a string start with "St"?

5. Does a string end with "art"?

6. Does a string have non-alphanumeric characters in it?

7. Are there any whitespace characters in the string?

8. Find and replace all non-alphanumeric characters in a string with "-".

This is just a small sample of what regexes can do.
We're going to focus solely on the first example because it's most commonly used.

Creating regular expressions starts with the / character. -Inside- two forward slashes, you can place any characters you would like to match 
with the string.

We can use the =~ operator to see if we have a match in our regex. Let's say we are looking for the letter 'b' in the string 'powerball'...see 
below for how we'd use a regex and =~ to do this:
=end


'powerball' =~ /b/
=> 5

                                                                                              #(sorry for caps)-(Recall: indices start from zero.)
=begin                                                                                                |
As you can see, a 5 was returned - this means that the first match that took place was at the fifth INDEX of the string. 
Since 5 is a 'truthy' value (i.e., in Ruby, 5 evaluates to true), we can use it as a boolean to check for matches. Whew, okay. 
See below for an example of this:
=end


# boolean_regex.rb

def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")    #"We have a match!" w/ nil returned        
has_a_b?("football")      #"We have a match!" w/ nil returned  
has_a_b?("hockey")        #"No match here." w/ nil returned  
has_a_b?("golf")          #"No match here." w/ nil returned  


=begin
Pretty cool stuff. On top of the =~ operator, we can use the "match" method to perform regex comparisons as well.
Using match returns a "MatchData" object that describes the match or nil if there is no match. See below:
=end


/b/.match("powerball")
=> #<MatchData "b">             #literal result from irb, # included


=begin
You can use a MatchData object to act as a boolean value in a program! See below:
=end


# boolean_matchdata.rb

def has_a_b?(string)
  if /b/.match(string)
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")    #"We have a match!" w/ nil returned        
has_a_b?("football")      #"We have a match!" w/ nil returned  
has_a_b?("hockey")        #"No match here." w/ nil returned  
has_a_b?("golf")          #"No match here." w/ nil returned  


=begin
As you can see, we get the same print out as before! Good stuff.

In the beginning, regexes are used rarely - but certain problems are a perfect fit for them. You can use regex to solve problems in one line that 
would take monumental effort otherwise. Remember: string pattern matching problem = use regex.

Moving on.










