class MunchiesService < BaseService

  def self.get_munchies(term, location)

  response = munchies_conn.get("?term=#{term}&location=#{location}")


  JSON.parse(response.body, symbolize_names: true)
  end

end