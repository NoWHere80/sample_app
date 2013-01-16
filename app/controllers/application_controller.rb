class ApplicationController < ActionController::Base
  protect_from_forgery
  #[TW] SessionHelpers are available in all controllers (in the corresponding view by default)
  include SessionsHelper
end
