require 'test_helper'

class AssessmentformTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Assessmentform.new.valid?
  end
end
