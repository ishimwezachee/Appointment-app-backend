if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_Appointment-app-backend', domain: 'Appointment-app-backend-json-api'
  else
    Rails.application.config.session_store :cookie_store, key: '_Appointment-app-backend'
  end