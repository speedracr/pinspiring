class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pins

  def is_admin?
    # Use a very, very hacky way to authenticate admins
    email.downcase.include? "admin"
  end  

end
