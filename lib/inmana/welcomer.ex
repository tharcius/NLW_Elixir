defmodule Inmana.Welcomer do
  # Receber um nome e idade do usuário, e se o usuário chamar banana e tiver idade 42, ele tecebe uma mensagem especial.
  # Se o usuário for maior de idade, o mesmo recebe uma mensagem normal
  # Se o usuário for menor de idade, retornamos um erro
  # Nome dos usuários deve ser tratado
    def welcome(%{"name" => name, "age" => age}) do

      age = String.to_integer(age)

      name
        |> String.trim()
        |> String.downcase()
        |> evaluate(age)

      # IO.inspect(name)
      # IO.inspect(age)

      # if name == "banana" and age == 42 do
      #   IO.puts("Você é especial")
      # else
      #   IO.puts("E ai, beleza?")
      # end
    end

    defp evaluate("banana", 42) do
      {:ok, "Banana, você é especial"}
    end

    defp evaluate(name, age) when age >= 18 do
      {:ok, "Bem vindo #{name}"}
    end

    defp evaluate(name, _age) do
      {:error, "You shall not pass #{name} !*"}
    end

  end
