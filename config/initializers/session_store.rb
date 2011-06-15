# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_assetinventory_session',
  :secret      => '5e21ded627dc402d1091e2afabd665f2d29f42a7b78410e00a70518abd9b4cb2e950c1544a30f87f6df84498f41c7249b04c906902208ad045264a3d55670ca5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
