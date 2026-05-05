defmodule TensorMoveClockScopeTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 77, capacity: 93, latency: 23, risk: 22, weight: 5}
    assert TensorMoveClockScope.score(signal_case_1) == 44
    assert TensorMoveClockScope.classify(signal_case_1) == "review"
    signal_case_2 = %{demand: 83, capacity: 98, latency: 25, risk: 12, weight: 13}
    assert TensorMoveClockScope.score(signal_case_2) == 157
    assert TensorMoveClockScope.classify(signal_case_2) == "review"
    signal_case_3 = %{demand: 98, capacity: 74, latency: 22, risk: 7, weight: 10}
    assert TensorMoveClockScope.score(signal_case_3) == 195
    assert TensorMoveClockScope.classify(signal_case_3) == "accept"
  end
end
