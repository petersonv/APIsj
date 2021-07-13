class User < ApplicationRecord
    has_secure_password
    #validates email is giving me an internal server error...why
    #validates :email, 
end
