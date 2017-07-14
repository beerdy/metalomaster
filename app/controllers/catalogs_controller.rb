class CatalogsController < ApplicationController
  include ShowCatalog
  def index
    catalog = Catalog.find(params[:id])
    if catalog
      @page.title = catalog.group.title
      @page.head = catalog.title
      @page.description = catalog.description
    end
  end
end
