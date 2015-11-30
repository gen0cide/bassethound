require "bassethound/version"
require 'resolv'
require 'net/smtp'

module Bassethound
  class Lookup
    def initialize(email)
      @address = email.chomp
      @domain = address.split('@').last
      @dns = ::Resolv::DNS.new
      @mx_r = @dns.getresources @domain, ::Resolv::DNS::Resource::IN::MX
      @mx_s = @mx_r.first.exchange.to_s
    end

    def is_valid?
      Net::SMTP.start @mx_s, 25 do |smtp|
        smtp.helo 'reddit.com'
        smtp.mailfrom 'admin@reddit.com'

        begin
          smtp.rcptto @address
          return true
        rescue Net::SMTPFatalError => err
          return false
        end
      end
    end
  end
end
