class AddSeasonToShows < ActiveRecord::Migration[7.0]
  def change
    add_column :shows, :season, :string
  end
end
