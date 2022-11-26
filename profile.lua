local E, L, V, P, G, _ = unpack(ElvUI)
local bars = 10
local extraBarStart, extraBars
if E.Retail then
	extraBarStart = 13
	extraBars = 3
end

P.actionbar['combatstate'] = {}
V['combatstate'] = {
	['GlobalFullAlpha'] = false,
}

for i = 1, bars do
	P.actionbar['combatstate']['bar' .. i] = {
		['enable'] = false,
		['ic'] = {
			['mouseover'] = false,
			['visibility'] = P.actionbar['bar' .. i]['visibility'],
			['alpha'] = P.actionbar['bar' .. i]['alpha'],
		},
		['ooc'] = {
			['mouseover'] = true,
			['visibility'] = P.actionbar['bar' .. i]['visibility'],
			['alpha'] = P.actionbar['bar' .. i]['alpha'],
		},
		['lastSaved'] = {
			['mouseover'] = '',
			['visibility'] = '',
			['alpha'] = '',
		},
		['fullAlphaOnMouseOver'] = false,
	}
end
if E.Retail then
	for i = extraBarStart, extraBarStart + (extraBars - 1) do
		P.actionbar['combatstate']['bar' .. i] = {
			['enable'] = false,
			['ic'] = {
				['mouseover'] = false,
				['visibility'] = P.actionbar['bar' .. i]['visibility'],
				['alpha'] = P.actionbar['bar' .. i]['alpha'],
			},
			['ooc'] = {
				['mouseover'] = true,
				['visibility'] = P.actionbar['bar' .. i]['visibility'],
				['alpha'] = P.actionbar['bar' .. i]['alpha'],
			},
			['lastSaved'] = {
				['mouseover'] = '',
				['visibility'] = '',
				['alpha'] = '',
			},
			['fullAlphaOnMouseOver'] = false,
		}
	end
end

P.actionbar['combatstate']['barPet'] = {
	['enable'] = false,
	['ic'] = {
		['mouseover'] = false,
		['visibility'] = P.actionbar['barPet']['visibility'],
		['alpha'] = P.actionbar['barPet']['alpha'],
	},
	['ooc'] = {
		['mouseover'] = true,
		['visibility'] = P.actionbar['barPet']['visibility'],
		['alpha'] = P.actionbar['barPet']['alpha'],
	},
	['lastSaved'] = {
		['mouseover'] = '',
		['visibility'] = '',
		['alpha'] = '',
	},
	['fullAlphaOnMouseOver'] = false,
}

P.actionbar['combatstate']['stanceBar'] = {
	['enable'] = false,
	['ic'] = {
		['mouseover'] = false,
		['alpha'] = P.actionbar['stanceBar']['alpha'],
	},
	['ooc'] = {
		['mouseover'] = true,
		['alpha'] = P.actionbar['stanceBar']['alpha'],
	},
	['lastSaved'] = {
		['mouseover'] = '',
		['alpha'] = '',
	},
	['fullAlphaOnMouseOver'] = false,
}
