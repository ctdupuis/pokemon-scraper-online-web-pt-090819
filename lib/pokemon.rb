class Pokemon
  attr_accessor :name, :type, :db 
  attr_accessor :id 
  
  @@all = []
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(name, type, db)
    sql = 'INSERT INTO pokemon (name, type) VALUES (?,?)'
    db.execute(sql, name, type)
<<<<<<< HEAD
  end
  
  def self.find(id, db)
    info = db.execute('SELECT * FROM pokemon WHERE id = ?', id).flatten
    Pokemon.new(id: info[0], name: info[1], type: info[2], db: db)
  end
  
=======
    # binding.pry
  end
>>>>>>> 4aed4fb1e419a00465bd3cf643b321308df08e2f
end