class User < ActiveRecord::Base
  has_secure_password

  before_save { self.email = email.downcase }
  before_create :create_remember_token, :add_admin

  valid_email = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: valid_email }
  validates :email, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  has_many :events

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end

    def add_admin
      if User.first.nil?
        self.admin = true
      end
    end
end
