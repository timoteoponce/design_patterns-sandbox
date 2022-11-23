class Message
    attr_accessor :id, :author, :text, :created_at

    def initialize(id, author, text, created_at)
        @id = id
        @author = author
        @text = text
        @created_at = created_at
    end
end