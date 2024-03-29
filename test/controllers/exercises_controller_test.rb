require 'test_helper'

class ExercisesControllerTest < ActionController::TestCase
  setup do
    @exercise = exercises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise" do
    assert_difference('Exercise.count') do
      post :create, exercise: { actual_reps_set_1: @exercise.actual_reps_set_1, excerise_type: @exercise.excerise_type, load_prescribed: @exercise.load_prescribed, reps_prescribed: @exercise.reps_prescribed, sets_prescribed: @exercise.sets_prescribed, user_id: @exercise.user_id }
    end

    assert_redirected_to exercise_path(assigns(:exercise))
  end

  test "should show exercise" do
    get :show, id: @exercise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercise
    assert_response :success
  end

  test "should update exercise" do
    patch :update, id: @exercise, exercise: { actual_reps_set_1: @exercise.actual_reps_set_1, excerise_type: @exercise.excerise_type, load_prescribed: @exercise.load_prescribed, reps_prescribed: @exercise.reps_prescribed, sets_prescribed: @exercise.sets_prescribed, user_id: @exercise.user_id }
    assert_redirected_to exercise_path(assigns(:exercise))
  end

  test "should destroy exercise" do
    assert_difference('Exercise.count', -1) do
      delete :destroy, id: @exercise
    end

    assert_redirected_to exercises_path
  end
end
