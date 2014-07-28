class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :excerise_type
      t.integer :load_prescribed
      t.integer :sets_prescribed
      t.integer :reps_prescribed
      t.integer :actual_reps_set_1
      t.references :user, index: true

      t.timestamps
    end
  end
end
