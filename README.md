### Overview

This is a simple implementation of and Employee's Salary history. In this implementation the Presentation layer has been decoupled from the Business logic 
and ORM layers. It is a wel known point of discussion in the Railties comunity as to where the business logic should be. Is in in the Model or the Controller,
inevitibly it mostly get hog washed half baked between the two.
In the approach that was done in this excercise it is neither, each domain only does what it was suppose to. 
The Rails concept is great in its approach but the data layer should never have been part of the stack. Other than the fact that it is almost always the most 
inifficiant opart of process it tends to bend the design towards its ineffiecies as well.
I will give you an example, image we would want to model a bicycle, in Ruby it you might do somethin like this:

class Bicycle
end

You might assign some attributes to it like, handlebars, wheels, peddles and gears, as well as some functionality, and that would have been a perfect model.
But now along comes the bundlingof an ORM ActiveRecord and with this small change:

class Bicycle < ActiveRecord::Base
end

This bycile has transformed into a full blow database controller, it can connect, maniopulate and interact with jsut about every aspect of the datastore. The 
fact that is was a representation of a bycicle is now a distant idea.

The solution was done in a combination of Phoenix, Elixir and the Erlang OTP. Phoenix is a like for like Rails clone implemented in Elixir. Elixir is a functional 
language abstraction that runs on the Erlang Run Time System. The Erlang OTP is a set of run time patterns or methodologies that implments best preactices for 
runniung systems as a service in a highly durable and distributed environemt

As I was doing this implementatikon I tried to think if ther is any other technolgie stacks that gives you this kind of capability as part of their DNA, and as such
I believe Erlang, Elixir and the OTP combination is the only one of its kind. 

### Design