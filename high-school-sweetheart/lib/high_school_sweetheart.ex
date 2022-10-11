defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.slice(no_whitespace(name), 0..0)
  end

  def initial(name) do
    (HighSchoolSweetheart.first_letter(name) |> String.upcase()) <> "."
  end

  def initials(full_name) do
    split_list = String.split(full_name, " ")
    HighSchoolSweetheart.initial(List.first(split_list)) <> " " <> HighSchoolSweetheart.initial(List.last(split_list))
  end

  def pair(full_name1, full_name2) do
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end

  def no_whitespace(string) do
    String.trim(string)
  end
end
