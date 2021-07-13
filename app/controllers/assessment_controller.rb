class AssessmentController < ApplicationController
    def index
        #need to show a question at random (***may need to be done on the front end***)
        #question has one correct answer and 3 incorrect answers(need to create a relation ship with a question to an answer by id---how)

        #assessment = Assessment.order("RANDOM()").:limit(10) 

        assessment = Assessment.all
        render json: {assessment: assessment}
    end





    #def create
        #this will be restricted to only admins
    #end
end
