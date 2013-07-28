class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :organization_id, :role
  # attr_accessible :title, :body
  belongs_to :organization
  has_many :appointments
  has_many :worksheets, :through => :appointments
  has_many :treatments, :through => :worksheets
  # belongs_to :organization
end
