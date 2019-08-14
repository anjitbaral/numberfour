# the concrete component we would like to decorate, a car in our example
class BasicCheckout
    def initialize(c, t)
        @cost = c
        @treatment = t
        # @color = color
       # @description = "basic checkout"
    end
    
    # getter method
    def cost 
        return @cost
    end
    
    # a method which returns a string representation of the object of type Basiccheckout
    # def details
    #     return @description + "#{@cost}"
    # end
    
    # # getter method
    def treatment
        return @treatment
    end
    
    # # getter method
    # def model 
    #     return @model
    # end
    
end # ends the Basiccheckout class



# decorator class -- this serves as the superclass for all the concrete decorators
# the base/super class decorator (i.e. no actual decoration yet), each concrete decorator (i.e. subclass) will add its own decoration
class CheckoutDecorator < BasicCheckout
    def initialize(basic_checkout)
        #basic_checkout is a real car, i.e. the component we want to decorate
        @basic_checkout = basic_checkout
        super(@basic_checkout.cost, @basic_checkout.treatment)
        @extra_cost = 0
      #  @description = "no extra feature"
    end
    
    # override the cost method to include the cost of the extra feature	
    def cost        
        return @extra_cost + @basic_checkout.cost
    end
    
    # # override the details method to include the description of the extra feature
    # def details
    #     return  @description + ": " + "#{@extra_cost}" + ". " + @basic_checkout.details
    # end
    
end # ends the CarDecorator class


# a concrete decorator --  define an extra feature
class MirrorDecorator < CheckoutDecorator
    def initialize(basic_checkout)
        super(basic_checkout)
        @extra_cost = 10
        @description = "anti glare rear view mirror"
    end
    
end # ends the MirrorDecorator class


# another concrete decorator -- define an extra feature
class ElectricWindowsDecorator < CheckoutDecorator
    def initialize(basic_checkout)
        super(basic_checkout)
        @extra_cost = 20
        @description = "electric windows"
    end
    
end # ends the ElectricWindowsDecorator class


# another concrete decorator -- define an extra feature
class ParkingSensorDecorator < CheckoutDecorator
    def initialize(basic_checkout)
        super(basic_checkout)
        @extra_cost = 5
        @description = "parking sensor"
    end
    
end # ends the ParkingSensorDecorator class
