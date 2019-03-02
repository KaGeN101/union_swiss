### Overview

This is a simple implementation of an Employee and their Salaries. In this implementation the Presentation layer has been decoupled from the Business logic 
and ORM layers. It is a well known point of discussion in the Railties community as to where the business logic should be. Is it in the Model or the Controller,
inevitibly it mostly get hog washed half baked between the two, as well as sprinkled in a few other locations.

In the approach that was done in this excercise it is neither, each domain only does what it was suppose to. 
The Rails concept is great in its approach but the data layer should never have been part of the stack. Other than the fact that it is almost always the most 
inifficiant part of the process it tends to bend the design towards its inefficiencies as well.
I will give you an example, image we would want to model a bicycle, in Ruby you might do somethin like this:

class Bicycle
end

You might assign some attributes to it like, handlebars, wheels, peddles and gears, as well as some functionality, and that would have been a perfect model.
But now along comes the bundling of an ORM like ActiveRecord and with this small change:

class Bicycle < ActiveRecord::Base
end

This bicycle has transformed into a full blown database controller, it can connect, manipulate and interact with just about every aspect of the datastore. The 
fact that is was a representation of a bicycle is now a distant idea.

This solution was done in a combination of Phoenix, Elixir and the Erlang OTP. Phoenix is a like for like Rails clone implemented in Elixir. Elixir is a functional 
language abstraction that runs on the Erlang Run Time System. The Erlang OTP is a set of run time patterns or methodologies that implments best preactices for 
running systems as a service in a highly durable and distributed environemt.

As I was doing this implementation I tried to think if there is any other technolgy stacks that gives you this kind of capability as part of their DNA, and as such
I believe Erlang, Elixir and the OTP combination is the only one of its kind. 

### Design