class User < ActiveRecord::Base
    has_secure_password
    has_many :visits
    
    validates :name, presence: true, length: {maximum: 15}
    validates :cpf, presence: true, if: :cpfIsValid?
    validates :password_digest, presence: true, length: {minimum: 8}
    VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
    before_save { self.email = email.downcase }
    
    def cpfIsValid?
        cpf = CPF.new(self.cpf)
        cpf.valid?
    end
    
end 