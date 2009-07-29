require "test/unit"
require "user_agent"
require 'user_agent/test'

class TestUserAgent < Test::Unit::TestCase
  def setup
    @agent_strings = UserAgent::Test::AGENT_STRINGS
  end
  
  def test_is_spider_true
    assert UserAgent.is_spider?( @agent_strings[:googlebot] )
    assert UserAgent.is_spider?( @agent_strings[:msnbot] )
  end

  def test_is_spider_false
    assert ! UserAgent.is_spider?( @agent_strings[:firefox] )
    assert ! UserAgent.is_spider?( @agent_strings[:opera] )
  end

end
