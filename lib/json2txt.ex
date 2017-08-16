defmodule Json2txt do
  def run do
    {:ok, csv} = File.read("data.json")
    data = Poison.Parser.parse!(csv)
    
    {:ok, file} = File.open "log.txt", [:write]
    
    Enum.each data, fn(p) ->
      person = %Json2txt.Person{id: p["id"], first_name: p["first_name"], last_name: p["last_name"],
                          email: p["email"], btc_address: p["btc_address"], ip_address: p["ip_address"]}
      :file.write(file, "ID: " <> to_string(person.id) <> "\r\n")
      :file.write(file, "Full Name: " <> Json2txt.Person.full_name(person) <> "\r\n")
      :file.write(file, "Email: " <> person.email <> "\r\n")
      :file.write(file, "BTC Address: " <> person.btc_address <> "\r\n")
      :file.write(file, "IP Address: " <> person.ip_address <> "\r\n\r\n")
    end
    
    File.close file
    
  end
end

Json2txt.run