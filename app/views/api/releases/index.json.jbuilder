json.releases do
  json.array! @releases do |r|
    json.id r.id
    json.subject r.subject
    json.content r.content
    json.creator r.creator.name
    json.receptor r.receptor.name
    json.adjuncts r.adjuncts.count
  end
end