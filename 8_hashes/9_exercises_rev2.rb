1.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

arr = family.select do |k, v|
  if k == :brothers || k == :sisters
    v.to_a
  end
end

puts arr

#work on this tomorrow...not quite right, keys are still there. book solution offers insight into where you tripped up.