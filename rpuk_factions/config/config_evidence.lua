Evidence = {}
Evidence.MaxAmountOfEvidence = 6
Evidence.TimeToAnalyze = 10000 -- Time in miliseconds to analyze the given evidence
Evidence.TimeToFindFingerprints = 3000 -- Time in miliseconds to find fingerprints in a car
Evidence.TimeBeforeCrimsCanDestory = 600 -- Seconds before Criminals can destroy evidence (300 is the time when evidence coolsdown and shows up as WARM)
Evidence.AccessToEvidenceCollection = "police"

Evidence.Text = {
	['not_in_vehicle'] = 'To use this you need to be in a vehicle!',
	['remove_evidence'] = 'Destroy evidence [~r~E~w~]',
	['cooldown_before_pickup'] = 'The evidence is too fresh/hot to destroy',
	['evidence_removed'] = 'Evidence destroyed!',
	['open_evidence_archive'] = '[~b~E~w~] View evidence archive',
	['evidence_archive'] = 'Evidence Archive',
	['view'] = 'View',
	['delete'] = 'Delete',
	['report_list'] = 'Report #',
	['evidence_deleted_from_archive'] = 'Evidence deleted from archive!',

	['evidence_colleted'] = 'Evidence #{number} collected!',
	['analyze_evidence'] = '[~b~E~w~] Analyze the evidence',
	['evidence_being_analyzed'] = 'The evidence is being analyzed by forensics! Please Wait',
	['evidence_being_analyzed_hologram'] = '~b~The evidence is being analyzed',
	['read_evidence_report'] = '[~b~E~w~] Read evidence report',
	['analyzing_car'] = 'The car is being analyzed! Please wait',
	['pick_up_evidence_text'] = 'Take evidence [~r~E~w~]',
	['no_fingerprints_found'] = 'No fingerprints found!',
	['no_evidence_to_analyze'] = "No evidence to analyze!",
	['shell_hologram'] = '~b~ {guncategory} ~w~ bullet shell',
	['blood_hologram'] = '~r~Blood Splat',
	['finger_hologram'] = '~r~Finger Print',
	['fingerprint_after_0_minutes'] = 'Status: ~r~Full Print',
	['fingerprint_after_10_minutes'] = 'Status: ~y~Partial Print',

	['blood_after_0_minutes'] = 'Status: ~r~FRESH',
	['blood_after_5_minutes'] = 'Status: ~y~AGED',
	['blood_after_10_minutes'] = 'Status: ~b~OLD',

	['shell_after_0_minutes'] = 'Status: ~r~HOT',
	['shell_after_5_minutes'] = 'Status: ~y~WARM',
	['shell_after_10_minutes'] = 'Status: ~b~COLD',


	['submachine_category'] = 'Submachine',
	['pistol_category'] = 'Pistol',
	['shotgun_category'] = 'Shotgun',
	['assault_category'] = 'Assault Rifle',
	['lightmachine_category'] = 'Light Machine Gun',
	['sniper_category'] = 'Sniper',
	['heavy_category'] = 'Heavy Weapon',
	['stun_category'] = 'Tazer'
}
