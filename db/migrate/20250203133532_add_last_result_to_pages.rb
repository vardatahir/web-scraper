class AddLastResultToPages < ActiveRecord::Migration[7.0]
  def change
    add_column :pages, :last_result_id, :integer

    Page.find_each do |page|
      p "for page: #{page.id}"
      p page.results.order(created_at: :desc).first.id
      page.update!(last_result: page.results.order(created_at: :desc).first)
    end
  end
end
