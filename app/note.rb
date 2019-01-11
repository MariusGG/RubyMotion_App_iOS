
class Note
attr_accessor :title, :noteworthiness, :message
  def initialize(note)
    @title = note['title']
    @noteworthiness = note['noteworthiness']
    @message = note['message']
  end
end
