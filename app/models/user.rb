class User < ApplicationRecord
  has_one :cart

  attr_accessor :login

  before_save { self.email = email.downcase }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6 }


  validates :username, presence: true, length: { maximum: 50}, uniqueness: {case_sensitive: false}, format: {with: /\A[a-zA-Z0-9 _\.]*\z/}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_hash).where("lower(username) = :value OR lower(email)= :value", value: login.downcase).first
    else
      where(conditions.to_hash).first
    end
  end

end
