class Timeline
    attr_reader :messages

    def initialize(vault)
        @vault = vault
    end

    def publish(author, text)
        msg = @vault.find(author, text)
        if msg.nil? then
            msg = Message.new(UUID.new, author, text, Time.now)
        else
            @vault.delete(msg)
            msg = Message.new(UUID.new, author, text, Time.now)
        end
        @vault.save(msg)
    end

    def messages(include_suggestions, include_promotions)
        messages = @vault.find_all()
        return mix(messages, include_suggestions, include_promotions)
    end

    private def mix(messages, include_suggestions, include_promotions)
        # here we mix the messages, there's no need to put all the code here since
        # it's outside the scope of our exercise
    end
end