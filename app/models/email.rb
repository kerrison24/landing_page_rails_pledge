class Email < ActiveRecord::Base
  validates :first_name, :email, presence: true
  validates :email, uniqueness: true
end
