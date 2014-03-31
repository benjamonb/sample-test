module PricesHelper
	def test2 
		@test2 = "fies"
		return @test2
	end

	def local_prices
	#produziert ein Hash mit den Preisen eines Datums 
		@local_prices = Fs_local_price.last 

		@local_diesel_prices = {
			nord: {
				low: @local_prices.nord_d_v.to_f,
				high: @local_prices.nord_d_b.to_f,
				name: "Nord",
			},
			ost: {
				low: @local_prices.ost_d_v.to_f,
				high: @local_prices.ost_d_b.to_f,
				name: "Ost (Berlin)",	
			},
			ost2: {
				low: @local_prices.ost_2_d_v.to_f,
				high: @local_prices.ost_2_d_b.to_f,
				name: "Ost2 ?",
			},
			sued_ost: {
				low: @local_prices.sost_d_v.to_f,
				high: @local_prices.sost_d_b.to_f,
				name: "Süd Ost (Leuna)"
			},
			mitte: {
				low: @local_prices.mitte_d_v.to_f,
				high: @local_prices.mitte_d_b.to_f,
				name: "Mitte",
			},
			west: {
				low: @local_prices.west_d_v.to_f,
				high: @local_prices.west_d_b.to_f,
				name: "West",
			},
			rhein_main: {
				low: @local_prices.rhein_d_v.to_f,
				high: @local_prices.rhein_d_b.to_f,
				name: "Rhein Main",
			},
			sued_west: {
				low: @local_prices.swest_d_v.to_f,
				high: @local_prices.swest_d_b.to_f,
				name: "Süd West",
			},
			sued: {
				low: @local_prices.sued_d_v.to_f,
				high: @local_prices.sued_d_b.to_f,
				name: "Süd (Ingolstadt)",
			},
		}

		@local_heatingoil_prices = {
			nord: {
				low: @local_prices.nord_h_v.to_f,
				high: @local_prices.nord_h_b.to_f,
				name: "Nord",
			},
			ost: {
				low: @local_prices.ost_h_v.to_f,
				high: @local_prices.ost_h_b.to_f,
				name: "Ost (Berlin)",	
			},
			ost2: {
				low: @local_prices.ost_2_h_v.to_f,
				high: @local_prices.ost_2_h_b.to_f,
				name: "Ost2 ?",
			},
			sued_ost: {
				low: @local_prices.sost_h_v.to_f,
				high: @local_prices.sost_h_b.to_f,
				name: "Süd Ost (Leuna)"
			},
			mitte: {
				low: @local_prices.mitte_h_v.to_f,
				high: @local_prices.mitte_h_b.to_f,
				name: "Mitte",
			},
			west: {
				low: @local_prices.west_h_v.to_f,
				high: @local_prices.west_h_b.to_f,
				name: "West",
			},
			rhein_main: {
				low: @local_prices.rhein_h_v.to_f,
				high: @local_prices.rhein_h_b.to_f,
				name: "Rhein Main",
			},
			sued_west: {
				low: @local_prices.swest_h_v.to_f,
				high: @local_prices.swest_h_b.to_f,
				name: "Süd West",
			},
			sued: {
				low: @local_prices.sued_h_v.to_f,
				high: @local_prices.sued_h_b.to_f,
				name: "Süd (Ingolstadt)",
			},
		}

		return @local_prices, @local_diesel_prices, @local_heatingoil_prices
	end

	def ara_prices 
	# produziert ein Hash der aktuellen Preise
		@ara_prices = Fs_ara_price.where("datum = '2014-03-28'")
		@ara_prices = @ara_prices.first  # richtig wäre last, aber das klappt nicht


		@ara_prices =  {
			gasoil_fob: { 
				low: @ara_prices.fob_goil_l.to_f,
				high: @ara_prices.fob_goil_h.to_f,
				name: "Gasoil FOB",
				},
			# gasoil_01p_fob: { 
			# 	low: @ara_prices.fob_goil01p_l.to_f,
			# 	high: @ara_prices.fob_goil01p_h.to_f,
			# 	name: "Gasoil 0.5? FOB",
				# },
			diesel_fob: { 
				low: @ara_prices.fob_dies_l.to_f,
				high: @ara_prices.fob_dies_h.to_f,
				name: "Diesel FOB",
				},
			gasoil_cif: { 
				low: @ara_prices.cif_goil_l.to_f,
				high: @ara_prices.cif_goil_h.to_f,
				name: "Gasoil CIF" 
				},
			# gasoil_01p_cif: { 
			# 	low: @ara_prices.cif_goil01p_l.to_f,
			# 	high: @ara_prices.cif_goil01p_h.to_f,
			# 	name: "Gasoil 0,5 CIF" 
				# },
			diesel_cif: { 
				low: @ara_prices.cif_dies_l.to_f,
				high: @ara_prices.cif_dies_h.to_f,
				name: "Diesel CIF",
				},
		}			
		
		return @ara_prices
	end
end
