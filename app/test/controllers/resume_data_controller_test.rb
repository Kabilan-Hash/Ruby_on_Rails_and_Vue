require "test_helper"

class ResumeDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resume_datum = resume_data(:one)
  end

  test "should get index" do
    get resume_data_url
    assert_response :success
  end

  test "should get new" do
    get new_resume_datum_url
    assert_response :success
  end

  test "should create resume_datum" do
    assert_difference("ResumeDatum.count") do
      post resume_data_url, params: { resume_datum: { name: @resume_datum.name } }
    end

    assert_redirected_to resume_datum_url(ResumeDatum.last)
  end

  test "should show resume_datum" do
    get resume_datum_url(@resume_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_resume_datum_url(@resume_datum)
    assert_response :success
  end

  test "should update resume_datum" do
    patch resume_datum_url(@resume_datum), params: { resume_datum: { name: @resume_datum.name } }
    assert_redirected_to resume_datum_url(@resume_datum)
  end

  test "should destroy resume_datum" do
    assert_difference("ResumeDatum.count", -1) do
      delete resume_datum_url(@resume_datum)
    end

    assert_redirected_to resume_data_url
  end
end
