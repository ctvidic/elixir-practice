defmodule HighScore do
  @initial_score 0

  def new() do
    %{}
  end

  def add_player(scores, name, score \\ 0) do
    Map.put(scores, name, score)
  end

  def remove_player(scores, name) do
    Map.delete(scores, name)
  end

  def reset_score(scores, name) do
    Map.put(scores, name, @initial_score)
  end

  def update_score(scores, name, score) do
    prev_score = scores[name]
    if prev_score == nil do
      Map.put(scores, name, score)
    else
      Map.put(scores, name, prev_score + score)
    end
  end

  def get_players(scores) do
    Map.keys(scores)
  end
end
