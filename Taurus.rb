module FBI_logger               #can't create instances of a module
                                # main advantage is pulling out modules to be useful across classes
                                # point of modules is code reuse
    #sends actions to the FBI
    def log_to_FBI
        puts "sold a Taurus"
        #{} say
    end
end

class Taurus
    # mixin the
    include FBI_logger
    @@num_sold = 0
    
    attr_accessor :buyer_name, :price, :sold
    def initialize(buyer_name, price)
        @buyer_name = buyer_name
        @price = price
    end
    
    def sold
        log_to_FBI
        @@num_sold += 1
    end
    
    #class method
    
    def self.how_many_sold
        @@num_sold
    end

   
end

5.times do |i|
    t = Taurus.new("person_#{i}", 10000 + 1 * 100)
    t.sold
end


 puts "how many taurus sold = #{Taurus.how_many_sold}"