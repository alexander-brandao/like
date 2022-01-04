class ReviwSerializer
  include JSONAPI::Serializer
  attributes :title, :description, :score, :company_id
end
