# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



sql = <<-SQL
DO $$
BEGIN
	FOR r IN 1..5000 LOOP
		INSERT INTO posts (title, content, created_at, updated_at)
			values(
				'Sample Title ' || r,
				 'Im baby pickled food truck vexillologist live-edge shabby chic try-hard fashion axe. Shaman mixtape chicharrones, wolf 3 wolf moon hot chicken post-ironic twee man bun. Viral irony pour-over food truck intelligentsia, fixie stumptown kickstarter. Live-edge single-origin coffee flexitarian neutra, shoreditch DIY mlkshk la croix leggings brooklyn. Disrupt ugh green juice, 3 wolf moon air plant jianbing butcher quinoa.

Asymmetrical cred unicorn mlkshk, photo booth yr lumbersexual pork belly try-hard vice williamsburg PBR&B YOLO artisan. Raw denim microdosing hexagon humblebrag raclette plaid vaporware vegan bicycle rights vice street art. Pitchfork beard listicle chia quinoa. Blue bottle artisan pour-over tattooed kickstarter. Forage truffaut prism, fashion axe retro 90s you probably havent heard of them godard brunch locavore meggings fixie artisan disrupt flexitarian. Sartorial lumbersexual tumblr, dreamcatcher vexillologist fashion axe man bun truffaut lomo health goth irony cardigan narwhal.',
				 CURRENT_DATE + CURRENT_TIME,
				 CURRENT_DATE + CURRENT_TIME
			);
	END LOOP;
END;
$$;
SQL

ActiveRecord::Base.connection.execute(sql)
