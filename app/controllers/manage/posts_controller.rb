class Manage::PostsController < Manage::BaseController
  inherit_resources
  defaults :route_prefix => 'manage'
  actions :all, :except => [:show]
  belongs_to :structure
  
  load_and_authorize_resource :post, :through => :structure
  
  before_filter :make_filter, :only => [:index] 
  cache_sweeper :post_sweeper, :only => [:create, :update, :destroy]
  
  def create
    create!{ manage_structure_posts_path(@structure.id) }
  end
  
  def update
    update!{ manage_structure_posts_path(@structure.id) }
  end
  
  def destroy
    destroy!{ manage_structure_posts_path(@structure.id) }
  end
  
  protected
    
    def begin_of_association_chain
      @structure
    end
    
    def collection
      @posts = (@posts || end_of_association_chain).merge(@search.scoped).page(params[:page])
    end
    
    def make_filter
      @search = Sunrise::ModelFilter.new(Post, :attributes=>[ :title, :kind ] )
      @search.update_attributes(params[:search])
    end
end
