defmodule DNA do


  def encode_nucleotide(code_point) do
    case code_point do
      ?A -> 0b0001
      ?C -> 0b0010
      ?G -> 0b0100
      ?T -> 0b1000
      _ -> 0b0000
    end
  end

  def decode_nucleotide(encoded_code) do
    case encoded_code do
      0b0001 -> ?A
      0b0010 -> ?C
      0b0100 -> ?G
      0b1000 -> ?T
      _ -> ?\s
    end
  end

  def encode(dna), do: do_encode(dna, <<0::size(0)>>)

  def do_encode([], result) do
    result
  end

  def do_encode([head | tail], result) do
    do_encode(tail, <<result::bitstring, encode_nucleotide(head)::4>>)
  end

  def decode(dna) do: do_decode(dna, '')

  def do_decode(<<0::0>>, accum), do: accum

  def do_decode(<<head::4, rest::bitstring>>, accum) do
    do_decode(rest,accum ++ [decode_nucleotide(head)])
  end

end
