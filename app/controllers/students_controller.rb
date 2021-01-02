class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    set_student
    @student.active? ? @student.active = false : @student.active = true
    @student.save
    # redirect_to @student
    redirect_to action: "show", id: @student # RAILS automatically knows that when you toss in an object, that you're really looking for just the ID, I think.
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end
end