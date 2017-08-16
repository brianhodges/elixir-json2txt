defmodule Json2txt.Person do
	defstruct id: nil, first_name: "", last_name: "", email: "",
		btc_address: "", ip_address: ""

	def set_first_name(p, first_name) do
	  %{p | first_name: first_name}
	end
	
	def set_last_name(p, last_name) do
	  %{p | last_name: last_name}
	end
	
	def set_email(p, email) do
	  %{p | email: email}
	end
	
	def set_btc_address(p, btc_address) do
	  %{p | btc_address: btc_address}
	end
	
	def set_ip_address(p, ip_address) do
	  %{p | ip_address: ip_address}
	end
	
	def full_name(p) do
		p.first_name <> " " <> p.last_name
	end
end