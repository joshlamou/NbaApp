class Nba_Player
  attr_accessor :team, :first_name, :last_name, :role, :height
  
  def initialize
    @star = [] # Initialize an empty array to store favorite players
    puts "Welcome to my NBA "
  end
  def start
    star_menu
  end
  
  def star_menu
    loop do
      puts 'Options'
      puts '1. Favorite Player'
      puts '2. Add Player'
      puts '3. View Players'
      puts '4. Take a shot'
      puts '5. Exit'

      choice = gets.chomp.to_i

      case choice
      when 1
        puts 'Favorite Player selected'
        puts favorite_player
      when 2
        puts 'Add Player selected'
        user_add_player
      when 3
        puts 'View Players selected'
        view_player
      when 4
        puts 'Take a shot selected'
        puts shot_attempt
      when 5
        puts 'Exiting...'
        break
      else
        puts 'Invalid choice, please select again'
      end
    end
  end

  def shot_attempt
    reactions = [ 
      "You missed your shot.",
      "You made your shot!",
      "Your shot hit the rim and didn't go in.",
      "Your shot hit the backboard and went in!",
      "You airballed your shot.",
      "You made a 3pt shot!"
    ]
    return reactions.sample
  end

  def favorite_player
    player = player_info("Stephen", "Curry", "Point Guard", "Golden State Warriors", "6 feet 3 inches")
    puts "#{player.first_name} #{player.last_name} plays for the #{player.team}! They play the #{player.role} position and are #{player.height} tall."
  end
  def view_player 
    puts "How would you like to view players?"
    puts "1. Predefined Players"
    puts "2. Custom Players"
    choice = gets.chomp.to_i

    case choice
    when 1
      predefined_players
    when 2
      custom_players
    else
      puts "Invalid choice"
    end
  end

  def predefined_players
    puts "Here is a list of several of my favorite NBA players and what roles they play:"
    puts "1. Stephen Curry - Point Guard"
    puts "2. Nikola Jokic - Center"
    puts "3. Kobe Bryant - Shooting Guard"
    puts "4. Ayo Dosunmu - Point Guard"
    puts "5. Tyrese Haliburton - Point Guard"
    puts "6. Michael Jordan - Shooting Guard"
  end

  def custom_players
    if @star.empty?
      puts "You haven't added any custom players yet."
    else
      puts "Here are the custom players you've added:"
      @star.each_with_index do |player, index|
        puts "#{index + 1}. #{player.first_name} #{player.last_name} - #{player.role} - #{player.team} - #{player.height}"
      end
    end
  end
  

  def user_add_player
    puts "Enter the name of the player you would like to add"
    player_name = gets.chomp

    return if player_name.downcase == 'exit'

    puts 'Enter the role of the player:'
    player_role = gets.chomp

    puts 'Enter the team of the player:'
    player_team = gets.chomp

    puts 'Enter the height of the player:'
    player_height = gets.chomp

    add_player(player_name, player_role, player_team, player_height)
  end

  def add_player(name, role, team, height)
      player = Nba_Player.new
      player.first_name = name
      player.role = role
      player.team = team
      player.height = height
      @star << player
      puts "You have #{name} on the list."
    end
    
    private
    
    def player_info(first_name, last_name, role, team, height)
      player = Nba_Player.new
      player.first_name = first_name
      player.last_name = last_name
      player.role = role
      player.team = team
      player.height = height
      player
    end
  end
  
  # Initialize the class and start the program
  player = Nba_Player.new
  player.start
