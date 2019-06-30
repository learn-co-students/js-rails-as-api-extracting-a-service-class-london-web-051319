class SightingSerializer
    def initialize(sighting_object)
        @sigthing = sighting_object
    end

    def to_serialized_json
        options = {
            include: {
            bird: {
                only: [:name, :species]
            },
            location: {
                only: [:latitude, :longitude]
            }}, except: [:updated_at, :created_at],
        }
        @sigthing.to_json(options)

    end
end