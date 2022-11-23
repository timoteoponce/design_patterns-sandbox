class Vault
    @instance = new

  private_class_method :new

  # The static method that controls the access to the singleton instance.
  #
  # This implementation let you subclass the Singleton class while keeping just
  # one instance of each subclass around.
  def self.instance
    @instance
  end

  # find a particular message where the author and text are the same
  def find(author, text)
    # persistence layer code
  end

  # return all messages present in the vault
  def find_all
    # persistence layer code
  end

  # store a given message to the vault
  def save(message)
    # persistence layer code
  end

  # delete a given message from the vault
  def delete(message)
    # persistence layer code
  end

end