class SightingSerializer
    def initialize(sighting_object)
        @sighiting = sighting_object
    end

    def to_serialized_json
        options = {
            include: {
                bird: {
                    only: [:name, :species]
                },
                location: {
                    only: [:latitude, :longitude]
                }
            },
            except: [:update_at],
        }
        @sighting.to_json(options)
    end
end