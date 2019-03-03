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

The solution consists of 3 components:
 - HrPortal: Presentation Layer - Phoenix Application 
 - PayrollServices: OTP Elixir Application - Business Logic and ORM
 - Relation Database: SQL Datastore to keep state

There is an architecture diagram in this repor named HrPortal.png. I spun the solution more than once, it use to be called HrHub before.

Abstracting the business logic out of the presentation layer means it can be re used in various other solutions as well by just exposing the API to a front end service.

Both the presentation layer as well as the service runs as seperate OTP Apllication Behaviors, as such they are 2 independent run times inside the Erlang system.
To have even more independent exposure Phoenix Channels can easily be exposed to GenServer handles.


### Assumptions

I did not do anything with the Payment Start Date. I assumed payments runs on the SARS cycle of March to February. Since it is now March everyone's first period starts 
now. Even if that interpretation is not 100% correct it shuold give me 12 months to sort out the issue, and anayone that starts during the year will not have the correct 
payemnt cycle until adapted.

Did not add any CSS, I believe makeup should be able to be aded at any time without effecting the implementation layers

Did not do any JavaScript, wanted to do the Search featrure as maybe an AJAX call but since it returned a know view just piggy backed of that

I left the other generated actions, views and templates in even thou they are not excercised from the presentation layer
