/obj/item/circuitboard/machine/autodoc
	name = "Autodoc (Machine Board)"
	build_path = /obj/machinery/autodoc
	req_components = list(/obj/item/scalpel/advanced = 1,
		/obj/item/retractor/advanced = 1,
		/obj/item/surgicaldrill = 1,
		/obj/item/stock_parts/manipulator = 1,
		/obj/item/stock_parts/micro_laser = 3,
		/obj/item/stock_parts/matter_bin = 1)

/obj/item/circuitboard/machine/cryptominer
	name = "Cryptocurrency Miner (Machine Board)"
	build_path = /obj/machinery/cryptominer
	req_components = list(
		/obj/item/stock_parts/matter_bin = 2,
		/obj/item/stock_parts/micro_laser = 2,
		/obj/item/stock_parts/manipulator = 2,
		/obj/item/stock_parts/scanning_module = 2,
		/obj/item/stack/ore/bluespace_crystal = 2)

/obj/item/circuitboard/machine/cryptominer/syndie
	name = "Syndicate Cryptocurrency Miner (Machine Board)"
	build_path = /obj/machinery/cryptominer/syndie
	req_components = list(
		/obj/item/stock_parts/matter_bin = 2,
		/obj/item/stock_parts/micro_laser = 2,
		/obj/item/stock_parts/manipulator = 2,
		/obj/item/stock_parts/scanning_module = 2,
		/obj/item/stack/ore/bluespace_crystal = 2)

/obj/item/circuitboard/machine/bluespace_miner
	name = "Bluespace Miner (Machine Board)"
	build_path = /obj/machinery/mineral/bluespace_miner
	req_components = list(
		/obj/item/stock_parts/matter_bin = 5,
		/obj/item/stock_parts/micro_laser = 5,
		/obj/item/stock_parts/manipulator = 5,
		/obj/item/stock_parts/scanning_module = 5,
		/obj/item/stack/ore/bluespace_crystal = 5,
		ANOMALY_CORE_BLUESPACE = 1)
	needs_anchored = FALSE

/obj/item/circuitboard/machine/telecomms/message_server
	name = "Message Server (Machine Board)"
	build_path = /obj/machinery/telecomms/message_server
	req_components = list(
		/obj/item/stock_parts/manipulator = 2,
		/obj/item/stack/cable_coil = 1,
		/obj/item/stock_parts/subspace/filter = 1)
