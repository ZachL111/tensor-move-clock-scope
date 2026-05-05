defmodule TensorMoveClockScope do
  @threshold 159
  @risk_penalty 7
  @latency_penalty 3
  @weight_bonus 4

  def score(%{demand: demand, capacity: capacity, latency: latency, risk: risk, weight: weight}) do
    demand * 2 + capacity + weight * @weight_bonus - latency * @latency_penalty - risk * @risk_penalty
  end

  def classify(signal), do: if(score(signal) >= @threshold, do: "accept", else: "review")
end
