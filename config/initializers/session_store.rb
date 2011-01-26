# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_armory2_session',
  :secret      => 'fe7c8d59eb33cff67c15569e66a694ce4fa831b84b21d62786803a3e73c3877e1be1344b21e287b0663d4c0ff753d8d2bb21c0548ed5f0f54e620f431cacc8c4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
