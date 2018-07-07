SimpleCov.start 'rails' do
    add_filter "/spec/"
    add_filter "/tmp/"
    add_filter "/app/channels/"
    add_filter "/app/jobs/"
    add_filter "/app/mailers/"
end
