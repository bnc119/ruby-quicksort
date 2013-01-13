

# open the Array class for future monkey patching
#class Array
#
#  def to_s 
#  	puts "overridden/monkey-patched 'to_s' routine"
#  end
#
#end



# quicksort routine
# takes an array of random numbers
# 
def quicksort(a)

	do_quick_sort(a, 0, a.length-1)
	puts a.to_s
end
  
def do_quick_sort(a,p,r)

	if p < r
		
		q = partition(a, p, r)
  	do_quick_sort(a,p,q-1)
		do_quick_sort(a,q+1,r)
	end
		
end

# the partion routine finds the middle of the element of the list
# and puts into the right place in the list.
def partition(a, p, r)

	# assume last position
	pivot = a[r]
	i = p-1
	p.upto(r-1) do |j|
		if a[j] <= pivot
			i+=1
			a[i], a[j] = a[j], a[i]
		end 
	end
	a[i+1],a[r] = a[r],a[i+1]
  i+1
end

a = []
20.times do 
  a << rand(20)
end

quicksort a

  
	






