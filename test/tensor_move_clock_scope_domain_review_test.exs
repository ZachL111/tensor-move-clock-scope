defmodule TensorMoveClockScope.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 60, slack: 22, drag: 16, confidence: 75}
    assert TensorMoveClockScope.DomainReview.score(item) == 169
    assert TensorMoveClockScope.DomainReview.lane(item) == "ship"
  end
end
