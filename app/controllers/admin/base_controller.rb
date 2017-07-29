class Admin::BaseController < ApplicationController
  before_action :site_http_basic_authenticate_with

  def site_http_basic_authenticate_with
    return unless Rails.env.production?
    authenticate_or_request_with_http_basic("Application") do |name, password|
      name == ENV['BASIC_AUTH_USERNAME'] && password == ENV['BASIC_AUTH_PASSWORD']
    end
  end
end