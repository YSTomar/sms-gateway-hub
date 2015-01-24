require 'rubygems'
require 'httparty'

class Sms
	include HTTParty
	base_uri 'http://login.smsgatewayhub.com/smsapi'

	def initialize(user, password)
	@options = { query: {user: user, password: password, gwid: 2, pwd: password } }
	end

	def check_balance
	self.class.get("/CheckBalance.aspx", @options)
	end

	def send(number, sender_id, message)
	configure({to: number, sid: sender_id, msg: message, fl: 0})
	self.class.get("/pushsms.aspx", @options)    
	end

	def bulk_send(number, sender_id, message)
	send(number, sender_id, message)
	end

	def unicode_send(number, sender_id, message)
	configure({dc: 8})
	send(number, sender_id, message)
	end

	def bulk_unicode_send(number, sender_id, message)
	unicode_send(number, sender_id, message)
	end

	## Messgage id for which you need to check 
	# delivery report
	def delivery_report(message_id)
	configure({messageid: message_id})
	self.class.get("/checkdelivery.aspx", @options) 
	end

	## date format should be mm/dd/yyyy
	def bulk_delivery_report(fromdate, todate)
	configure({fromdate: fromdate, todate: todate})
	self.class.get("/mis.aspx", @options) 
	end

	def scheduled_sms(number, sender_id, message, schd_time)
	configure({schedtime: schd_time})
	send(number, sender_id, message) 
	end

	def group_send(number, sender_id, message, group_id)
	configure({groupid: group_id})
	send(number, sender_id, message) 
	end

	protected

	def configure(opts = {})
	@options[:query].merge!(opts)
	@options
	end
end



