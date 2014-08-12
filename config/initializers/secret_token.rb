# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		# Use the existing token.
		File.read(token_file).chomp
  	else
    	# Generate a new token and store it in token_file.
   		 token = SecureRandom.hex(64)
    	File.write(token_file, token)
    	token
  	end
end

SkinnystorkV4::Application.config.secret_key_base = secure_token

# replaced key '3b47e51a0abdf69c75c39c4969477f561259d04d16a6e27f3727a1ab203764f18caebfca184a3b7020a8ac87ea638c88a3f6c0d4d77d760ef4747759d51f445e' with the variable secure_token
