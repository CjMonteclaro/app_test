require 'test_helper'

class PolicyExtensionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @policy_extension = policy_extensions(:one)
  end

  test "should get index" do
    get policy_extensions_url
    assert_response :success
  end

  test "should get new" do
    get new_policy_extension_url
    assert_response :success
  end

  test "should create policy_extension" do
    assert_difference('PolicyExtension.count') do
      post policy_extensions_url, params: { policy_extension: { assured_no: @policy_extension.assured_no, credit_term: @policy_extension.credit_term, effective_date: @policy_extension.effective_date, endorsement_no: @policy_extension.endorsement_no, extension: @policy_extension.extension, intermediary_name: @policy_extension.intermediary_name, intermediary_no: @policy_extension.intermediary_no, new_due_date: @policy_extension.new_due_date, orig_due_date: @policy_extension.orig_due_date, policy_no: @policy_extension.policy_no, premium_due: @policy_extension.premium_due } }
    end

    assert_redirected_to policy_extension_url(PolicyExtension.last)
  end

  test "should show policy_extension" do
    get policy_extension_url(@policy_extension)
    assert_response :success
  end

  test "should get edit" do
    get edit_policy_extension_url(@policy_extension)
    assert_response :success
  end

  test "should update policy_extension" do
    patch policy_extension_url(@policy_extension), params: { policy_extension: { assured_no: @policy_extension.assured_no, credit_term: @policy_extension.credit_term, effective_date: @policy_extension.effective_date, endorsement_no: @policy_extension.endorsement_no, extension: @policy_extension.extension, intermediary_name: @policy_extension.intermediary_name, intermediary_no: @policy_extension.intermediary_no, new_due_date: @policy_extension.new_due_date, orig_due_date: @policy_extension.orig_due_date, policy_no: @policy_extension.policy_no, premium_due: @policy_extension.premium_due } }
    assert_redirected_to policy_extension_url(@policy_extension)
  end

  test "should destroy policy_extension" do
    assert_difference('PolicyExtension.count', -1) do
      delete policy_extension_url(@policy_extension)
    end

    assert_redirected_to policy_extensions_url
  end
end
