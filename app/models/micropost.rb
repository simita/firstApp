class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user


    validates 	:content,
    			:length=>{:maximum=>140},
    			:presence=>{:message=>"missing"}
    validates 	:user_id,
    			:presence=>{:message=>"missing"}


end
