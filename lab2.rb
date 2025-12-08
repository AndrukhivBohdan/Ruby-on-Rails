class Artist 

    def initialize(id,artist,band, sdate)
        @id = id
        @artist = artist
        @band = band
        @sdate = sdate 
    end
        def get_id
        @id
    end

    def get_artist
        @artist
    end

    def get_band
        @band
    end

    def get_sdate
        @sdate
    end

    def set_id(value)
        @id = value
    end

    def set_artist(value)
        @artist = value
    end

    def set_band(value)
        @band = value
    end

    def set_sdate(value)
        @sdate = value
    end

    def info
        "Artist ID: #{@id}, Name: #{@artist}, Band: #{@band}, Start Date: #{@sdate}"
  end
end
class Genres
    attr_accessor :artists, :git, :gname

    def initialize(git = "",gname = "")
        @artists = []
        @git = git
        @gname = gname
    end
    
    def add(artist)
        @artists.push(artist)
    end

    def remove(id)
        @artists.delete_if { |a| a.get_id == id }
    end

def search(name)
  @artists.select { |a| a.get_artist.downcase.include?(name.downcase) }
end

    def info
        "Genre: #{@gname}, Git: #{@git}, Artists count: #{@artists.size}"
    end
end

class Person
    attr_accessor :age, :who
    def initialize
        @age=20
        @who="person"
    end
    def greeting
        return "Hello, I am a #{who},I am #{age} years old."
    end
end

class Student < Person
    def initialize
        super
        @age += 1 
        @who = "student"
    end

    def greeting
        "Hello, I am a #{@who}, I am #{age} years old."
    end
end

class Teacher < Student
    def initialize
        super
        @age += 4
        @who = "teacher"
    end

    def greeting
        "Hello, I am a #{@who}, I am #{age} years old."
    end
end

class HeadOfDepartment < Teacher
    def initialize
        super
        @age += 10
        @who = "head of department"
    end

    def greeting
        "Hello, I am a #{@who}, I am #{age} years old."
    end
end

class Triangle
    attr_accessor :a, :b, :c

    def initialize(a,b,c)
        @a = a
        @b = b
        @c = c
    end

    def size
        p = perimeter / 2.0
        Math.sqrt(p * (p - @a) * (p - @b) * (p - @c))
    end
    
    def perimeter
        return @a+@b+@c
    end
    
    def info
        "Triangle sides: A=#{@a}, B=#{@b}, C=#{@c}, Perimeter=#{perimeter}, Area=#{size.round(2)}"
    end
end
