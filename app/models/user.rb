class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :fname, :lname, :location_id, :phoneNum, :email, :password, :password_confirmation, :remember_me

  has_one :location, :dependent => :destroy
  has_many :items, :dependent => :destroy
end
