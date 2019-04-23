class KittensController < ApplicationController
def new
  @kitten = Kitten.new

end

def edit
  @kitten = Kitten.find(params[:id])
end

def index
  @kittens = Kitten.all

  respond_to do |format|
    format.html # index.html.erb
    format.xml  { render :xml => @kittens }
    format.json { render :json => @kittens }
  end

end

def create
  @kitten = Kitten.new(kitten_params)

  if @kitten.save 
    redirect_to kitten_path(@kitten.id)
  else 
    flash[:danger] = "No kitty kitty"
    render :new
  end

end

def show
  @kitten = Kitten.find(params[:id])

  respond_to do |format|
    format.html # index.html.erb
    format.xml  { render :xml => @kitten }
    format.json { render :json => @kitten }
  end

end

def update
  @kitten = Kitten.find(params[:id])
  if @kitten.update_attributes(kitten_params)
    flash[:success] = "kitten updated"
    redirect_to @kitten
  else
    render 'edit'
  end
end

def destroy
  @kitten = Kitten.find(params[:id]).destroy
  flash[:success] =  "Katty dead"
  redirect_to root_url
end

private 

def kitten_params
  params.require(:kitten).permit(:name, :age, :softness, :cuteness)
end
end
