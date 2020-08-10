# strings can use single quotes ( 'hi there' ) or double quotes ( "hi again" )

# if you want to include single quotes within a string, there are two methods:
    
    # first, you can use double quotes for the string itself, then single quotes inside it:
    
    "The man said, 'Hi there!' and ran off"
    
    # second, you can use single quotes with "escaping" a.k.a. using the escape character (\) to tell the computer 
    # that the quotes that follow it are not meant as Ruby syntax, just simply characters
    
    'The man said, \'Hi there!\' and ran off'
    
    #double quotes allow for something called "string interpolation" - #{ } (check flashcard for refresher) 
    #gotta use double quotes if you wanna interpolate!