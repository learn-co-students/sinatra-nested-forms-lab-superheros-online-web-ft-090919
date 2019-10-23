class CreateTeamMembersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :power
      t.string :biography
    end
  end
end
