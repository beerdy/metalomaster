module ShowCatalog
  def show
    @limit = 20

    case params[:id]
    when 'all'
      products = Product.all
    when /^[\d]+$/
      products = Product.where( catalog_id: params[:id] )
      #@group = Catalog.includes(:products).where("products.#{@current_page} = ? and group_id = ?",true,params[:id]).references(:products).first
    end

    # Есть ли вобще продукты в выбранном каталоге
    first_product = products.first

    if first_product.nil? or params[:last].nil? ? false : (!/\A\d+\z/.match(params[:last]))
      render action: "index"
      return
    end

    # -- Head page -- #
    head = first_product.catalog
    #Title & text - catalog
    @group_title = head.group.title
    @catalog_title = head.title
    @description = head.description.html_safe
    # // -- Head page -- #



    # -- Start pagination -- #
    @products = Array.new

    size = products.size

    @parts = (size/@limit.to_f).ceil
    
    start  = params[:last].nil? ? 0 : params[:last].to_i
    finish = start+@limit
    
    @current = start

    start.upto(finish) do |count|
      break if products[count].nil?
      current = count
      @products.push products[count]
    end
    # // -- Start pagination -- #

  end
end