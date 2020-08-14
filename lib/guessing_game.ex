defmodule GuessingGame do

  def start do
    IO.puts "What is the maximum number you want me to think of?"
    {maximum, _} = (IO.gets("Maximum number: ") |> Integer.parse)
    number = Enum.random(0..maximum)
    IO.puts "Well, I have thought of a number between 0 and #{maximum}"
    IO.puts "The number I have thought of is #{number}"
    input(number, 0)
  end

  def input(number, tries) do
    {input, _} = (IO.gets("I think it's: ") |> Integer.parse)
    check(number, input, tries + 1)
  end

  def check(number, number, _tries) do
    IO.puts "Congrats, you win the game :)"
  end

  def check(number, input, 5) do
    IO.puts "The number you were looking for is #{number}"
    IO.puts "You have lost the game :("
  end

    def check(number, input, tries) when input > number do
    IO.puts "The number you are looking for is lower"
    IO.puts "#{tries}/5 tries"
    input(number, tries)
  end

   def check(number, input, tries) when input < number do
    IO.puts "The number you are looking for is higher"
    IO.puts "#{tries}/5 tries"
    input(number, tries)
  end

end
