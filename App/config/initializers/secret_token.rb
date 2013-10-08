# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
App::Application.config.secret_key_base = 'c64c24fb41674602df048c6113a66e79ca9fa23684fb36d76c574159ebf5e906eaf5a40cf01ba470b7202b60d8b973e90dd5e75bf6f877e59db1a15d520604f8'
