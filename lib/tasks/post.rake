namespace :post do
  desc "updates comments in posts table"
  task :update_comments => :environment do
    Post.find_each do |post|
      post.comments = rand(1..100)
      post.save!
    end
  end
end
