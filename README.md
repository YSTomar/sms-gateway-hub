sms-gateway-hub
====================

With the help of this gem you can easily wrap up the msgatewayhub.com. :-)

INSTALLTION

First thing you need to do is the installation , you can follow the below mentioned steps to install the gem inside your rails application.
You need to add sudo if you are not using rvm(ruby version manager)

<pre>
gem install sms-gateway-hub
</pre>

 
Add this following line in your Gemfile and then run bundle install. 
<pre>
gem 'sms-gateway-hub', '~> 0.0.1' 
</pre>



USAGE

Once you have installed this gem you can do the following :-

<pre>
sms = Sms.new('username', 'password')

Check balance
sms.check_balance

send message
sms.send(number, sender_id, message)

send bulk message
sms.bulk_send(number, sender_id, message)

send unicode message
sms.unicode_send(number, sender_id, message)

send unicode bulk message
sms.bulk_unicode_send(number, sender_id, message)

watch delivery report
sms.delivery_report(message_id)

watch bulk delivery report
sms.bulk_delivery_report(fromdate, todate) # date format should be mm/dd/yyyy

Send schedules messages
sms.scheduled_sms(number, sender_id, message, schd_time)

send message to a group
sms.group_send(number, sender_id, message, group_id)


</pre>

I have used msgatewayhub library to develop this Gem. So all credit goes to msgatewayhub. :-)
