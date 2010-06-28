# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_monthly_dividend_session',
  :secret      => 'c0687e53bc2fa81cc5a358ed0f0a526db59ebed42ccd3efd82c3ad3d8199f97367ec6f4b299669c92cdef3937c3a7af2ac12a4f1772c5b05930ccf88307a9654'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
