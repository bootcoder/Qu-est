class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :edit, :update, :destroy]

  # GET /quizzes
  # GET /quizzes.json
  def index
    @quizzes = Quiz.all
  end

  # GET /quizzes/1
  # GET /quizzes/1.json
  def show
    @questions = Quiz.find(params[:id]).questions
    p @questions
  end

  # GET /quizzes/new

  def new
    p params
    if session[:id]  #&& Teacher.find(session[:id]).teacher_access == true
      session[:c_id] = params[:id]
      # @course = Course.find(params[:id])
      @quiz = Quiz.new
      @target_teacher = Teacher.find(session[:id])
    else
      redirect_to log_in_path
    end
  end

  # GET /quizzes/1/edit
  def edit
  end



  # POST /quizzes
  # POST /quizzes.json
  def create
    current_course = Course.find(session[:c_id])
    @quiz = Quiz.new(quiz_params)
    current_course.quizzes << @quiz

    respond_to do |format|
      if @quiz.save
        format.html { redirect_to @quiz, notice: 'Quiz was successfully created.' }
        format.json { render :show, status: :created, location: @quiz }

# @target_teacher.courses.quizzez << @quiz


      else
        format.html { render :new }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end


  # def create  
  #   @quiz_params = {name: params[:name]}
  #   @new_quiz = Quiz.create(@quiz_params)
  #   @something = {quiz_id: @new_quizid.id, teacher_id: session[:id]}
  # end






  # PATCH/PUT /quizzes/1
  # PATCH/PUT /quizzes/1.json
  def update
    respond_to do |format|
      if @quiz.update(quiz_params)
        format.html { redirect_to @quiz, notice: 'Quiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @quiz }
      else
        format.html { render :edit }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizzes/1
  # DELETE /quizzes/1.json
  def destroy
    @quiz.destroy
    respond_to do |format|
      format.html { redirect_to quizzes_url, notice: 'Quiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiz_params
      params.require(:quiz).permit(:name)
    end
end
