# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_axr-demo_session',
  :secret      => '0c62908e567b1619f58a9eb3418e6c6b8341cbde19e8293f507065738327f1977c042d8c2c19c150271b43bfc464bceddc663badbcc30744b66e9dda3debca6a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
