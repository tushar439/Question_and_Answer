class HomeController < ApplicationController
  before_action :authenticate_user!
   def index

   	
   end

   def question
		if(params["content"] != "")
			question = Question.new
			question.content = params["content"]
			question.user_id = current_user.id
			question.save
		end
		return redirect_to '/'
	end
	def answer
		if(params["content"] != "")
			answer = Answer.new
			answer.content = params["content"]
			answer.user_id = current_user.id
			answer.question_id = params["question_id"]
			answer.save
		end
		return redirect_to '/'
	end
	def method_name
		
	end
	def logout
    session[:user_id] = nil
    return redirect_to '/users/index'
  end

end
