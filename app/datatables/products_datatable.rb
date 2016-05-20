class ProductsDatatable
  include Rails.application.routes.url_helpers
  delegate :params, :h, :link_to, :number_to_currency, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Product.count,
      iTotalDisplayRecords: products.total_entries,
      aaData: data
    }
  end

private

  def data
    products.map do |product|
      [
        product.product_category_name,
        product.product_name,
        product.qty_in_stock,
        product.unit_name,
        product.qty_allocated,
        product.low_stock_qty,
        product.manage_stock,
        link_to('Edit', edit_product_path(product)),
        link_to('Copy', product_copy_path(product)),
        link_to('Delete', product, method: :delete, data: { confirm: 'Are you sure?' })
      ]
    end
  end

  def products
    @products ||= fetch_products
  end

  def fetch_products
    products = Product.joins(:product_category, :unit).select("product_categories.name AS product_category_name, products.name AS product_name, products.qty_in_stock, units.short AS unit_name, products.qty_allocated, products.low_stock_qty, products.manage_stock, products.id").order("#{sort_column} #{sort_direction}")
    products = products.page(page).per_page(per_page)
    if params[:sSearch].present?
      products = products.where("LOWER(products.name) like LOWER(:search) or LOWER(product_categories.name) like LOWER(:search)", search: "%#{params[:sSearch]}%")
    end
    products
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[product_category_name product_name qty_in_stock unit_name manage_stock]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end
