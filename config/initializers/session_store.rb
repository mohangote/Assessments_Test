# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_formtastic_test_session',
  :secret      => '574474a2c961cdaffba1b79744a030e8fb64397f8b3306fbf6de41be1ff9e1e41f81f99db4229c17a46ff1f37619ac9eb7d3f49b72c12c9a4700cf2b5a490391'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
