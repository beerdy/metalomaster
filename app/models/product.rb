class Product < ActiveRecord::Base
  dragonfly_accessor :image
  belongs_to :catalog
  has_many :photos
  belongs_to :tag
  accepts_nested_attributes_for :photos, allow_destroy: true, reject_if: lambda {|attributes| attributes['image'].blank?}

  rails_admin do
    include_all_fields
  
    exclude_fields  :sort, :updated_at, :created_at, :slave, :review, :url
  
    edit do
      field :description, :rich_editor do
        config({
          :insert_many => true
        })
      end
      field :specification, :rich_editor do
        config({
          :insert_many => true
        })
      end
    end
    create do
      configure :description do
        default_value do
          '<p>Для уточнения подробного описание продукта обращайтесь <a href="/contact/index">по номеру телефона, либо форме обратной связи</a></p>
          <div class="price">
            <p>Цена: <span>0</span> <i class="fa fa-rub" aria-hidden="true"></i></p>
          </div>
          <div class="available">
            <ul>
              <li><span>Материал:</span> &nbsp; железо</li>
              <li><span>Вес:</span>&nbsp; 0 кг</li>
              <li><span>Доступно на складе:</span>&nbsp; под заказ</li>
            </ul>
          </div>'
        end
      end
      configure :specification do
        default_value do
          '<ul class="specification-ul">
            <li><span class="specification-heading">Материал</span> <i>|</i> <span> Метал </span>
            <div class="clear"></div>
            </li>
            <li><span class="specification-heading">Габариты </span> <i>|</i> <span>-/-/-</span>
            <div class="clear"></div>
            </li>
            <li><span class="specification-heading">Вес (kg)</span> <i>|</i> <span>0</span>
            <div class="clear"></div>
            </li>
          </ul>'
        end
      end
    end
  end

end