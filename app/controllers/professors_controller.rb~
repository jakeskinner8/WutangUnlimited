class ProfessorsController < ApplicationController
  def index
    @professors = []
      if params[:list] != nil
         temp = params[:list].split(',')
         temp.each do |x|
         @professors << Professor.find(x)
         end
      else
        @professors = Professor.all
      end
  end

  def show
	@professors = Professor.all
	@selected = Professor.find(params[:id])
        temp = Professor.find(:all,:order=>'winpercentage desc')
        i = 0
	@ranked = -1
	temp.each do |x|
		i = i + 1
		if x == @selected
			@ranked = i
		end
	end
	
  end

    
  def search
    @search = params[:search]
  #@professors = Professor.where("first_name like ? or last_name like ? or email like ? or phone like ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
  #redirect_to(request.referer)
    @ids=""
    if params[:search].gsub(/\s+/, "") != ""
      @professorslist = Professor.where('first_name like ? or last_name like ? or email like ? or phone like ?', "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
      if @professorslist != nil
        @professorslist.each do |p|
          if @professorslist.size > 1
            @numberOfResults = "More than one"
            @ids=@ids+p.id.to_s+","
          else
            @numberOfResults = "Only one"
            @ids = p.first_name
          end
        end
        flash[:notice] = "Results found"
        if @numberOfResults == "Only one"

          redirect_to professor_path(@professorslist[0].id) 
        elsif @numberOfResults == "More than one"
          @ids = @ids.chop
          redirect_to professors_path(:list=>@ids)
        else
          flash[:notice] = "Results not found"
          redirect_to(:back) 
        end
      end  
      else
        redirect_to(:back) 
    end
    
  end
end
