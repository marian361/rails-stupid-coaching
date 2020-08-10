class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question] == "I am going to work"
      @answer = "Great!"
    elsif params[:question].include? "?"
       @answer = "Silly question, get dressed and go to work!"
    else 
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

#   def answer
#     @questions = ['hello', 'what time is it?']
#     if params[:question]
#       @questions = @questions.select { |question| question.start_with?(params[:question]) }
#     end  

#       <% if @questions == "hello" %>
#     <p>Great!</p>
#   <%  elsif @questions == "what time is it?" %>
#     <p>Silly question, get dressed and go to work!</p>
#   <% else %>
#     <p>I don't care, get dressed and go to work!</p>
#   <% end %>
# end
