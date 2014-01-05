class BoringVisualizer

  def visualize(boards)
    puts "final state\n"
    boards.last.each_with_index do |e, row|
      e.each_with_index do |e, col|
        if e
          print "*"
        else
          print '-'
        end
      end
      puts "\n"
    end
  end

end