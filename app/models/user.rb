class User < ActiveRecord::Base
 
  attr_accessible :email, :name
  has_many :microposts




   EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  validates 	:email ,
  				:presence=>{:message=>"missing"}, 
  				:format => EMAIL_REGEX,
            	:uniqueness => {:case_sensitive => false}
   validates 	:name ,
   				:presence=>{:message=>"missing"}




end
