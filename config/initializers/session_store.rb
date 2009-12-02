# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_graveyard_session',
  :secret      => 'aca973d9808e4ca0addf49014575572718f197d0899618a351d4d902dee8c34afbafae97ea2a95c1d58a4262d319b29ed6322aba6842d934718953e072004995'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
