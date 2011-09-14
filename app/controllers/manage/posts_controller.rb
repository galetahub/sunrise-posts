class Manage::PostsController < Manage::BaseController
  inherit_resources
  actions :all, :except => [:show]
  belongs_to :structure, :finder => :find_by_permalink!
  
  load_and_authorize_resource :post, :through => :structure
  cache_sweeper :post_sweeper, :only => [:create, :update, :destroy]

  has_scope :with_title, :as => :title, :only => [:index]
  order_by :title, :published_at
  
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
      @posts = (@posts || end_of_association_chain).order(search_filter.order).page(params[:page])
    end
end
