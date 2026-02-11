class PartnerSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :job, :rating, :title, :backstory, :race, :birthday,
  :specialty, :cv, :passive_name, :passive_description, :ego_name, :ego_description
end
