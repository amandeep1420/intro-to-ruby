=begin

Both this chapter and the last covered two very important and widely used data structures: hashes and arrays.

It's overwhelming when you look at all the different ways to represent data with code...a good way to avoid feeling daunted is by picking these 
things up in small parts and applying them. Pick up a little, then apply. Keep adding more little parts as you move along. Just keep building. 
It's impossible to learn everything in the beginning, so let's learn a few things well, build a solid base, and go from there.

Things to consider when deciding to use a hash or an array:

- does the data need to be associated with a specific label? If yes, use a hash. If no (the data doesn't have a natural label), then an array 
  will work fine.

- does order matter? If yes, then use an array. Ruby 1.9 introduced hashes maintaining order as well, but usually ordered items are stored in an 
  array.

- do you need a 'stack' or a 'queue' structure? Arrays are good at mimicking simple "first-in first-out" queues or "last-in first-out" stacks.

As you grow as a dev, your familiarity with arrays and hashes will naturally affect which one you reach for when trying to solve specific problems. 
The key is to practice and experiment with each to learn which data structure works best for which situation.

Word.