INSERT INTO users (id, name, age) VALUES (1, 'Finnebar', 17), (2, 'Bear', 6), (3, 'Iguana', 4), (4, 'Alex', 33),
(5, 'Amanda', 24), (6, 'Sophie', 24), (7, 'Rosey', 9), (8, 'Victoria', 23), (9, 'Franz', 100), (10, 'Hermione', 30),
(11, 'Voldemort', 90), (12, 'Marisa', 24), (13, 'Swizzle', 4), (14, 'Sirius', 36), (15, 'Albus', 113), (16, 'Squid', 5),
(17, 'Whale', 6), (18, 'Pacha', 5), (19, 'Ena', 24), (20, 'Katie', 24);

  INSERT INTO projects (id, title, category, funding_goal, start_date, end_date) VALUES
  (1, 'Help me buy a guitar', 'music', 500.00, '2013-06-30', '2013-07-30'),
  (2, 'My book on SQL', 'books', 20.00, '2013-01-01', '2014-01-01'),
  (3, 'The next Harry Potter', 'books', 1000.00, '2013-05-30', '2015-05-30'),
  (4, 'Animal shelter needs dog food', 'charity', 400.00, '2013-03-14', '2013-06-30'),
  (5, 'Voldement needs a body', 'charity', 6000.00, '2013-03-20', '2013-09-20'),
  (6, 'The next Inna-Gadda-Davida', 'music', 200.00, '2014-12-30', '2015-12-30'),
  (7, 'Iguana needs tail operation', 'charity', 2000.00, '2013-10-02', '2013-10-30'),
  (8, 'I have bed bugs!', 'charity', 800.00, '2014-06-30', '2014-06-31'),
  (9, 'I want to teach English in China', 'charity', 3000.00, '2013-06-30', '2013-09-30'),
  (10, 'Help save birds of paradise', 'charity', 5000.00, '2012-03-20', '2013-06-30');

INSERT INTO pledges (id, amount, user_id, project_id) VALUES
(1, 10.00, 1, 2),
(2, 20.00, 1, 3),
(3, 40.00, 1, 4),
(4, 50.00, 2, 3),
(5, 10.00, 3, 2),
(6, 20.00, 4, 4),
(7, 40.00, 5, 10),
(8, 60.00, 6, 10),
(9, 50.00, 7, 9),
(10, 700.00, 8, 8),
(11, 1000.00, 8, 7),
(12, 40.00, 9, 6),
(13, 50.00, 9, 3),
(14, 50.00, 10, 4),
(15, 24.00, 12, 1),
(16, 34.00, 11, 1),
(17, 12.00, 13, 6),
(18, 19.00, 14, 5),
(19, 20.00, 15, 5),
(20, 40.00, 16, 6),
(21, 35.50, 17, 7),
(22, 40.00, 18, 8),
(23, 60.00, 19, 9),
(24, 70.00, 20, 10),
(25, 100.00, 20, 4),
(26, 40.00, 19, 1),
(27, 20.00, 18, 6),
(28, 90.00, 17, 9),
(29, 230.00, 16, 6),
(30, 450.00, 15, 5);
--
-- #selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name (FAILED - 1)
--     #selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name (FAILED - 2)
--     #selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal (FAILED - 3)
--     #selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name (FAILED - 4)
--     #selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category (FAILED - 5)
--     #selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category (FAILED - 6)
--
-- Failures:
--
--   1) crowdfunder sql questions #selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
--      Failure/Error: expect(@db.execute(selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name)).to eq([["Animal shelter needs dog food", 210], ["Help me buy a guitar", 98], ["Help save birds of paradise", 170], ["I have bed bugs!", 740], ["I want to teach English in China", 200], ["Iguana needs tail operation", 1035.5], ["My book on SQL", 20], ["The next Harry Potter", 120], ["The next Inna-Gadda-Davida", 342], ["Voldement needs a body", 489]])
--
--      SQLite3::SQLException:
--        near "Write": syntax error
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `initialize'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `new'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `prepare'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:137:in `execute'
--      # ./spec/crowdfunder_spec.rb:98:in `block (3 levels) in <top (required)>'
--
--   2) crowdfunder sql questions #selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
--      Failure/Error: expect(@db.execute(selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabeti zed_by_name)).to eq([["Albus", 113, 470], ["Alex", 33, 20], ["Amanda", 24, 40], ["Bear", 6, 50], ["Ena", 24, 100], ["Finnebar", 17, 70], ["Franz", 100, 90], ["Hermione", 30, 50], ["Iguana", 4, 10], ["Katie", 24, 170], ["Marisa", 24, 24], ["Pacha", 5, 60], ["Rosey", 9, 50], ["Sirius", 36, 19], ["Sophie", 24, 60], ["Squid", 5, 270], ["Swizzle", 4, 12], ["Victoria", 23, 1700], ["Voldemort", 90, 34], ["Whale", 6, 125.5]])
--
--      SQLite3::SQLException:
--        near "Write": syntax error
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `initialize'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `new'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `prepare'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:137:in `execute'
--      # ./spec/crowdfunder_spec.rb:102:in `block (3 levels) in <top (required)>'
--
--   3) crowdfunder sql questions #selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
--      Failure/Error: expect(@db.execute(selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal)).to eq([["My book on SQL", 0], ["The next Inna-Gadda-Davida", 142]])
--
--      SQLite3::SQLException:
--        near "Write": syntax error
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `initialize'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `new'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `prepare'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:137:in `execute'
--      # ./spec/crowdfunder_spec.rb:106:in `block (3 levels) in <top (required)>'
--
--   4) crowdfunder sql questions #selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
--      Failure/Error: expect(@db.execute(selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name)).to eq([["Iguana", 10], ["Swizzle", 12], ["Sirius", 19], ["Alex", 20], ["Marisa", 24], ["Voldemort", 34], ["Amanda", 40], ["Bear", 50], ["Hermione", 50], ["Rosey", 50], ["Pacha", 60], ["Sophie", 60], ["Finnebar", 70], ["Franz", 90], ["Ena", 100], ["Whale", 125.5], ["Katie", 170], ["Squid", 270], ["Albus", 470], ["Victoria", 1700]])
--
--      SQLite3::SQLException:
--        near "Write": syntax error
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `initialize'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `new'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `prepare'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:137:in `execute'
--      # ./spec/crowdfunder_spec.rb:110:in `block (3 levels) in <top (required)>'
--
--   5) crowdfunder sql questions #selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
--      Failure/Error: expect(@db.execute(selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category)).to eq([["music", 40], ["music", 24], ["music", 34], ["music", 12], ["music", 40], ["music", 40], ["music", 20], ["music", 230]])
--
--      SQLite3::SQLException:
--        near "Write": syntax error
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `initialize'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `new'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `prepare'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:137:in `execute'
--      # ./spec/crowdfunder_spec.rb:114:in `block (3 levels) in <top (required)>'
--
--   6) crowdfunder sql questions #selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
--      Failure/Error: expect(@db.execute(selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category)).to eq([["books", 140]])
--
--      SQLite3::SQLException:
--        near "Write": syntax error
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `initialize'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `new'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:91:in `prepare'
--      # /Users/macbookpro/.rvm/gems/ruby-2.3.3/gems/sqlite3-1.3.13/lib/sqlite3/database.rb:137:in `execute'
--      # ./spec/crowdfunder_spec.rb:118:in `block (3 levels) in <top (required)>'
