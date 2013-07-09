namespace :db do 
	desc "Fill database with sample data"
	task populate: :environment do
		10.times do |n|
			puts "[DEBUG] creating user #{n+1} of 10"
			name = Faker::Name.name
			email = "user-#{n+1}@example.com"
			password = "password"
			User.create!( name: name,
										email: email,
										password: password,
										password_confirmation: password	)
		end

		User.all.each do |user|
			puts "[DEBUG] uploading images for user #{user.id} of #{User.last.id}"
			10.times do |n|
				image = File.open(Dir.glob(File.join(Rails.root, 'sampleimages', '*')).sample)
				title = %w(boost delay loop reverb wah distortion).sample
				rating = %w(1 2 3 4 5).sample
				price = %w(25 35 45 55 65 75 85 100 200 300 500 1000).sample
				user.pedals.create!(image: image, title: title, rating: rating, price: price)
			end
		end
	end
end
