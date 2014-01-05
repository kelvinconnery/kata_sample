# encoding: utf-8

require 'curses'

class ConsoleVisualizer

  def visualize(boards)
    Curses.init_screen
    Curses.start_color
    Curses.init_pair(Curses::COLOR_GREEN, Curses::COLOR_GREEN, Curses::COLOR_BLACK)
    boards.each_with_index do |board, tick|
      sleep 1
      Curses.clear
      Curses.addstr "after tick #{tick}\n"
      Curses.refresh
      board.each_with_index do |e, row|
        e.each_with_index do |e, row|
          if e
            Curses.attron(Curses::color_pair(Curses::COLOR_GREEN) | Curses::A_BOLD) {
              Curses.addstr("*")
            }
          else
            Curses.attron(Curses::color_pair(Curses::COLOR_BLACK) | Curses::A_BOLD) {
              Curses.addstr(" ")
            }
          end
        end
        Curses.addstr "\n"
        Curses.refresh
      end
    end
  end

end