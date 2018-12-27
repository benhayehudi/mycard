require "./lib/mycard/version.rb"
require 'pry'

module Mycard
  class Error < StandardError; end
  
  class Card

    attr_accessor :name, :job_title, :company, :twitter, :linkedin, :github, :portfolio, :gem

    def initialize(details)
      @name = details["name"]
      @job_title = details["job_title"]
      @company = details["company"]
      @twitter = details["twitter"]
      @linkedin = details["linkedin"]
      @github = details["github"]
      @portfolio = details["portfolio"]
      @gem = details["gem"]
    end

    def call
      display_card
    end

    def display_card
      puts "my name is #{@name}"
    end
  end
end
