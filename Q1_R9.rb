require 'active_record'
ActiveRecord::Base.establish_connection(:adapter => "sqlite3",:database => "My_library")

ActiveRecord::Schema.define do
  create_table :library_users26 do |table|
    table.column :user_id, :integer
    table.column :name, :string
    table.column :age, :string
    table.column :books_borrowed, :integer
  end

  create_table :library_books26 do |table|
    table.column :books_id, :integer
    table.column :borrower_id, :integer
    table.column :title, :string
    table.column :borrowed, :string
    table.column :due_back, :string
  end
end

#class definition
class LibraryUsers26 < ActiveRecord::Base #inheriting ActiveRecord::Base
  self.table_name = 'library_users26'
  has_many :library_books26
end

class LibraryBooks26 < ActiveRecord::Base #inheriting ActiveRecord::Base
  self.table_name = 'library_books26'
  belongs_to :library_users26
end

libraryusers26 = LibraryUsers26.create(:user_id => 1, :name =>'Gurpreet', :age=>24, :books_borrowed=>1)
librarybooks26 = LibraryBooks26.create(:books_id=> 1, :borrower_id=>1, :title=>'Ruby Mine', :borrowed=>'17_November_2017', :due_back =>'16_January_2018')

p LibraryBooks26.find(1)
p LibraryUsers26.find(1)

