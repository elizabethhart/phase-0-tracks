hogwarts = {
	main_office: {
		staff: {
			headmaster: "Albus Dumbledore",
			administration: 8,
		},
		students: {
			in_detention: 2,
			tardy: 1,
		}
	},
	classroom_1: {
		teachers: [
			"Professor McGonagall",
			"Rubeus Hagrid"
		],
		students: 25,
	},
	classroom_2: {
		teachers: [
			"Professor Snape"
		],
		furniture: [
			"Potions Table",
			"Desks",
			"Bookcase",
			"Cauldron",
		],
		students: 0
	},
	quidditch_field: {
		players: [
			"Oliver Wood",
			"George Weasley",
			"Harry Potter"
		],
		equipment: {
			hoops: 6,
			brooms: 3,
			bludgers: 2,
			quaffles: {
				deflated: 4,
				inflated: 2
			},
			golden_snitch: 1,
		},
		teams: [
			"Gryffindor"
		]
	}
}

p hogwarts[:quidditch_field][:players][0]

p hogwarts[:main_office][:staff][:headmaster]

p hogwarts[:classroom_2][:furniture]

p hogwarts[:quidditch_field][:equipment][:quaffles][:deflated]