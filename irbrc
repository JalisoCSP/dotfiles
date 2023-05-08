def me
  User.find_by(email: 'cspetterson@hey.com')
end

def clear_sidekiq
  Sidekiq::Queue.all.each { |q| q.clear }
end
