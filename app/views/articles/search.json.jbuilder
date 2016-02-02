json.articles do
  json.array!(@articles) do |article|
    # japanese = document[:highlight][:japanese] ? document[:highlight][:japanese][0] : document[:_source][:japanese]
    # english = document[:highlight][:english] ? document[:highlight][:english][0] : document[:_source][:english]

    json.title article.title
    # binding.pry
    # json.title "#{japanese}"
    # json.description "#{english}<br/>#{t('label.type')}: #{document[:_source][:type_name]}<br/>#{t('label.score')}: #{document[:_score]}"
    # json.url document_path(document[:_id])
  end


  # json.array!(@articles) do |article|
  #   json.extract! article, :id, :title, :content
  #   json.url article_url(article, format: :json)
  # end
end
