class Connect4
  ROWS = 6
  COLUMNS = 7
  EMPTY_SLOT = '.'

  def initialize
    @board = Array.new(ROWS) { Array.new(COLUMNS, EMPTY_SLOT) }
    @current_player = 'X'
  end

  def play
    puts "Welcome to Connect 4!"
    display_board
    until game_over?
      player_move
      display_board
      switch_player
    end
    announce_result
  end

  private

  def display_board
    @board.each { |row| puts row.join(' ') }
    puts (1..COLUMNS).to_a.join(' ')
  end

  def player_move
    puts "Player #{@current_player}, choose a column (1-#{COLUMNS}):"
    column = gets.chomp.to_i - 1
    if valid_move?(column)
      place_piece(column)
    else
      puts "Invalid move! Try again."
      player_move
    end
  end

  def valid_move?(column)
    column.between?(0, COLUMNS - 1) && @board[0][column] == EMPTY_SLOT
  end

  def place_piece(column)
    (ROWS - 1).downto(0) do |row|
      if @board[row][column] == EMPTY_SLOT
        @board[row][column] = @current_player
        break
      end
    end
  end

  def switch_player
    @current_player = @current_player == 'X' ? 'O' : 'X'
  end

  def game_over?
    winner? || board_full?
  end

  def winner?
    winning_combination?
  end

  def board_full?
    @board.all? { |row| row.none?(EMPTY_SLOT) }
  end

  def winning_combination?
    directions = [[1, 0], [0, 1], [1, 1], [1, -1]]
    ROWS.times do |row|
      COLUMNS.times do |col|
        next if @board[row][col] == EMPTY_SLOT

        directions.each do |dx, dy|
          return true if four_in_a_row?(row, col, dx, dy)
        end
      end
    end
    false
  end

  def four_in_a_row?(row, col, dx, dy)
    4.times.all? do |i|
      r, c = row + i * dx, col + i * dy
      r.between?(0, ROWS - 1) && c.between?(0, COLUMNS - 1) && @board[r][c] == @current_player
    end
  end

  def announce_result
    if winner?
      switch_player
      puts "Player #{@current_player} wins!"
    else
      puts "It's a draw!"
    end
  end
end


