#!/usr/bin/env ruby

require 'aws/s3'

AWS::S3::Base.establish_connection!(
                                    :server            => 'cas00001.skyscapecloud.com',
                                    :port              => 8433,
                                    :use_ssl           => true,
                                    :access_key_id     => ENV['AWS_ACCESS_KEY'],
                                    :secret_access_key => ENV['AWS_SECRET_KEY']
                                    )

AWS::S3::Service.buckets.each do |bucket|
  puts "#{bucket.name}\t#{bucket.creation_date}"
end
