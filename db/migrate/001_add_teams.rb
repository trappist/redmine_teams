class AddTeams < ActiveRecord::Migration

  def self.up
    create_table :teams do |t|
      t.string :name
      t.timestamps
    end

    create_table :teams_users, :id => false do |t|
      t.belongs_to :team
      t.belongs_to :user
    end
    add_index :teams_users, [:team_id, :user_id]
  end

  def self.down
    drop_table :teams
    drop_table :teams_users
  end

end

