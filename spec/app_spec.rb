# -*- coding: utf-8 -*-
# spec/app_spec.rb

require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'rack/test'
require 'rspec'

describe "Application" do
  include Rack::Test::Methods
  def app
    @app ||= Sinatra::Application
  end

  describe "/ へのアクセス" do
    before { get '/' }

    it "正常なレスポンスを返す" do
      expect(last_response).to be_ok
    end

    it "Helloと出力する" do
      expect(last_response.body).to eq("Hello, WEB+DB PRESS!!")
    end
  end
end
