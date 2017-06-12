require_relative 'host.rb'

class Listing
    attr_accessor :host, :beds, :dates_availible, :cancellation, :guest, :reviews, :price
    
   def initialize(host, beds, dates, price)
    @host = host
    @beds = beds
    @dates_availible = []
    @cancellation = "strict"
    @guest = []
    @reviews = {}
    @price = price
   end
   
   def reserve_and_pay (guests, nights)
       @guest.push("#{guests}")
   end
   
   def leave_review (guest, review)
        @reviews[guest] = review
   end
end

listing1 = Listing.new("bob", 5, 4, 100)
listing1.reserve_and_pay("john", 5)
listing1.leave_review("john", "This is awsome")
puts listing1.guest
puts listing1.reviews
