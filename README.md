# README

## Issues Encountered
% rails g model Team
The name 'Team' is either already used in your application or reserved by Ruby on Rails. Please choose an alternative or use --skip-collision-check or --force to skip this check and run this generator again.


### Steps to reproduce
- Get it to the point where you can run `rails c`
- irb(main):001:0> Team.new(does_it_work: false)
~/.gem/ruby/3.1.2/gems/mongoid-8.0.2/lib/mongoid/attributes/processing.rb:97:in `process_attribute':  (Mongoid::Errors::UnknownAttribute)
message:
  Attempted to set a value for 'does_it_work' which is not allowed on the model Team.
summary:
  Team#does_it_work= was called but there is no 'does_it_work' field defined in the model, and Mongoid::Attributes::Dynamic is not included. This error is also raised instead of NoMethodError if the unknown attribute is passed to any method that accepts an attributes hash, such as #attributes=.
resolution:
  Define the field 'does_it_work' in Team, or include Mongoid::Attributes::Dynamic in Team if you intend to store values in fields that are not explicitly defined.

irb(main):002:0> Team.new(token: 'this_works')
=> #<Team _id: 6361d204bc69cd799022aa05, created_at: nil, updated_at: nil, team_id: nil, name: nil, domain: nil, token: "this_works", oauth_scope: nil, oauth_version: "v1", active: true, bot_user_id: nil, activated_user_id: nil, activated_user_access_token: nil>
