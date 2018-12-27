require "./lib/mycard/version.rb"
require 'colorize'

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
      puts "╭────────────────────────────────────────────────────────────────╮".colorize(:green)
      puts "                                                                  "
      puts "                         #{@name}                                 ".colorize(:color => :cyan, :mode => :bold)
      puts "                                                                  "
      puts "        Work: #{@job_title} @ #{@company}                         ".colorize(:blue)
      puts "        Portfolio: #{@portfolio}                                  ".colorize(:blue)
      puts "                                                                  "
      puts "        Twitter: #{@twitter}                                      ".colorize(:blue)
      puts "        LinkedIn: #{@linkedin}                                    ".colorize(:blue)
      puts "        GitHub: #{@github}                                        ".colorize(:blue)
      puts "                                                                  "
      puts "                                                                  "
      puts "        Card: gem install #{@gem}                                 ".colorize(:color => :cyan, :mode => :bold)
      puts "                                                                  "
      puts "                                                                  "
      puts "╰────────────────────────────────────────────────────────────────╯".colorize(:green)

    end
  end
end
