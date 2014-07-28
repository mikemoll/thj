json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :excerise_type, :load_prescribed, :sets_prescribed, :reps_prescribed, :actual_reps_set_1, :user_id
  json.url exercise_url(exercise, format: :json)
end
