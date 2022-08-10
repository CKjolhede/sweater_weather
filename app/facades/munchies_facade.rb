class MunchiesFacade

  def self.get_munchies(term, location)
    munchies_json = MunchiesService.get_munchies(term, location)
    Munchies.new(munchies_json[:businesses].first)
  end
end