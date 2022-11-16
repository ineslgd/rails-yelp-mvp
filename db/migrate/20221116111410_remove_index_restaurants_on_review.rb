class RemoveIndexRestaurantsOnReview < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :restaurants, :reviews
    remove_column :restaurants, :reviews_id
  end
end
