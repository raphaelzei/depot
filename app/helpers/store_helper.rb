module StoreHelper
  def self.GetTime
    t = Time.now()
    t.strftime("%m/%d/%Y %I:%M%p")
    #t.strftime("%m/%d/%Y")
  end
end

