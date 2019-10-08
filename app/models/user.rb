class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Can we do some sort of validation and
  # Use the remaining fields to actually come up and setup
  # Values that need usage here
  # This is where we need to understand polymorphic relationships and all
  # Etall we can use such values to come up and usage comes and tje values come along here
  # Does it mean that the elm ui is nothing compared to halogen api/ui
  has_many :articles, dependent:destroy
  has_many :comments, dependent:destroy
  has_many :favorits, dependent:destroy


  acts_as_follower
  acts_as_followable


  # This is what happens when such values need to come up and use the maintainance of values
  # That need to come up and use the application
  # Values that come along and
  # This is where the usage can be used and maintainance run as application values come up along for usage
  # This is what happens when the values come along and this is what happens when you want to do a laravel app
end
