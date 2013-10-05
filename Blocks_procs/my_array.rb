class MyArray < Array
	def my_each
		for i in self
		yield(i) if block_given?
		end
	end
	def my_inject(sum, &block)
		sum ||=0
		for i in self
			sum += block.call(sum, i) if block_gives?
		end
		sum
	end
end

# this is a great thing to know! try again soon to understand it.