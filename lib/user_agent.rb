class UserAgent
  VERSION = '1.0.1'

  def self.is_spider?(user_agent_string)
    user_agent_string =~ /(Baidu|bot|Google|SiteUptime|Slurp|Twiceler|WordPress|ZIBB|ZyBorg)/i
  end
end
