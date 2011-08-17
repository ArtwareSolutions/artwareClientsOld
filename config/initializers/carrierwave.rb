# config/initializers/carrierwave.rb
CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp')
  config.cache_dir = "#{Rails.root}/tmp/uploads"
  
  # case Rails.env.to_sym
  # when :development
  #   # config.storage = :file
  #   config.root = File.join(Rails.root, 'public')
  # 
  # when :production
        
    #config.fog_credentials = {
    #  :aws_access_key_id => ENV['S3_KEY_ID'],
    #  :aws_secret_access_key => ENV['S3_SECRET_KEY'],
    #  :provider => 'AWS'
    #}
    #config.fog_directory = ENV['S3_BUCKET']
    #config.fog_public = true
    
    config.storage = :s3
    config.s3_access_key_id = ENV['S3_KEY_ID']
    config.s3_secret_access_key = ENV['S3_SECRET_KEY']
    config.s3_bucket = ENV['S3_BUCKET']
    
    config.s3_access_policy = :public_read
    
end
  
# end