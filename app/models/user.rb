class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def admin?
    self.role == "admin"
  end
  def menber?
    self.role == "menber"
  end
  def client?
    self.role == "client"
  end
end
