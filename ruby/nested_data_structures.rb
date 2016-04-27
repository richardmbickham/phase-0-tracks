#driver code

sf_parks = {
    dolores: {
        park_name: 'Mission Dolores',
        recreation_areas: [
            "Palm Grove", 
            "Off-leash dog area",
            "Children's playground"
        ]
    },
    golden_gate: {
        park_name: 'Golden Gate',
        recreation_areas: [
            "Hippie Hill", 
            "Botantical Gardens",
            "California Academy of Sciences"
        ]
    },
    presidio: {
        park_name: 'Presidio',
        recreation_areas: [
            "Marshalls Beach",
            "Presidio Promenade",
            "Golden Gate Bridge",
            "Lucasfilm and the Yoda fountain"
        ],
        additional_national_parks: []
    },
       
}

#testing
p sf_parks[:golden_gate][:recreation_areas][0]

p sf_parks[:presidio][:additional_national_parks].push("Yosemite")

p sf_parks[:dolores][:recreation_areas][2].downcase

p sf_parks[:presidio][:recreation_areas][3].reverse