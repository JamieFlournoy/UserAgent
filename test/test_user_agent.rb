require "test/unit"
require "user_agent"

class TestUserAgent < Test::Unit::TestCase
  def setup
    @agent_strings = {
      :googlebot => "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)",
      :msnbot    => "msnbot/1.1 (+http://search.msn.com/msnbot.htm)",
      :firefox   => "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.12) Gecko/2009070609 Firefox/3.0.12",
      :opera     => "Opera/8.00 (Windows NT 5.1; U; en)"
    }
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
