=begin

Time for a tiny brain-break again.

So far, we've been using symbols as our hash keys; we have done this because it's the most common use case in the wild.

However, it's possible to use a different data type for a key - see below:
=end


{"height" => "6 ft"}                          # string as a key
=> {"height"=>"6 ft"}

{["height"] => "6 ft"}                       # array as a key
=> {["height"]=>"6 ft"}

{1 => "one"}                                  # integer as a key
=> {1=>"one"}

{45.324 => "forty-five point something"}      # float as a key
=> {45.324=>"forty-five point something"}

{{key: "key"} => "hash as a key"}             # hash as a key
=> {{:key=>"key"}=>"hash as a key"}


=begin
Yes, I know. We went over this a little bit previously, but it's still pretty bizarre to see so many things work as keys. 
As you can see, hashes can be very diverse and you can pretty much store whatever you want to in them. 
**Make note that we are forced to use the old style (using =>) when deviating from using symbols as keys.

Moving on.