{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 2,
			"revision" : 4,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 42.0, 84.0, 1298.0, 930.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Britannic",
					"fontsize" : 28.0,
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 2,
							"revision" : 4,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 42.0, 84.0, 1298.0, 930.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-18",
									"maxclass" : "flonum",
									"maximum" : 0.49,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1153.333252, 91.333374, 50.0, 22.0 ],
									"presentation_rect" : [ 510.666626, 521.333374, 0.0, 0.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1188.333252, 23.333344, 60.0, 22.0 ],
									"presentation_rect" : [ 545.666626, 453.333344, 0.0, 0.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1188.333252, 54.333374, 99.0, 22.0 ],
									"presentation_rect" : [ 545.666626, 484.333344, 0.0, 0.0 ],
									"style" : "",
									"text" : "min 0., max 0.49"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-28",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1153.333252, 23.333344, 30.0, 30.0 ],
									"presentation_rect" : [ 510.666626, 453.333344, 0.0, 0.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1210.333252, 91.333374, 146.666672, 20.0 ],
									"presentation_rect" : [ 567.666626, 521.333374, 0.0, 0.0 ],
									"style" : "",
									"text" : "Partial Multiplier"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1153.333252, 128.0, 125.0, 22.0 ],
									"presentation_rect" : [ 510.666626, 558.0, 0.0, 0.0 ],
									"style" : "",
									"text" : "setPartialMultiplier $1"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-21",
									"maxclass" : "flonum",
									"maximum" : 5.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 957.666626, 84.0, 50.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 992.666626, 16.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 992.666626, 47.0, 86.0, 22.0 ],
									"style" : "",
									"text" : "min 0., max 5."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-24",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 957.666626, 16.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1014.666626, 84.0, 146.666672, 20.0 ],
									"style" : "",
									"text" : "geometric multiplier"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 957.666626, 120.666687, 97.0, 22.0 ],
									"style" : "",
									"text" : "setGeometric $1"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-20",
									"maxclass" : "flonum",
									"maximum" : 5.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 763.333313, 84.0, 50.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 798.333313, 16.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 798.333313, 47.0, 86.0, 22.0 ],
									"style" : "",
									"text" : "min 0., max 5."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-9",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 763.333313, 16.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 820.333313, 84.0, 146.666672, 20.0 ],
									"style" : "",
									"text" : "arithmetic multiplier"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 763.333313, 120.666687, 97.0, 22.0 ],
									"style" : "",
									"text" : "setArithmetic $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-14",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 492.333344, 8.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 492.333344, 49.0, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 521.833313, 49.0, 229.0, 34.0 ],
									"style" : "",
									"text" : "Toggle On for \"overtone series\"\nToggle Off for \"partial series\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 492.333344, 87.666687, 93.0, 22.0 ],
									"style" : "",
									"text" : "setOvertone $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 11.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 42.0, 86.0, 22.0 ],
									"style" : "",
									"text" : "min 0, max 25"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.0, 8.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 11.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 291.0, 49.0, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 320.5, 49.0, 147.0, 34.0 ],
									"style" : "",
									"text" : "Toggle On for \"arithmetic\"\nToggle Off for \"geometric\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.0, 87.666687, 97.0, 22.0 ],
									"style" : "",
									"text" : "setSequence $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 72.0, 79.0, 72.0, 20.0 ],
									"style" : "",
									"text" : "# of partials"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-165",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 115.666687, 122.0, 22.0 ],
									"style" : "",
									"text" : "setPartialQuantity $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-162",
									"maxclass" : "number",
									"maximum" : 25,
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 15.0, 79.0, 50.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-39",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 291.0, 242.666687, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-162", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-162", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-165", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-162", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-165", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 933.0, 24.333313, 215.0, 41.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p settingsPicker",
					"varname" : "settings_picker"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-207",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 879.666687, 110.0, 44.0, 22.0 ],
					"style" : "",
					"text" : "export"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-789",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 649.0, 465.0, 150.0, 20.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-155",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 770.0, 42.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 950.5, 533.5, 100.0, 22.0 ],
					"style" : "",
					"text" : "send~ freq",
					"varname" : "send~_0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 950.5, 565.5, 100.0, 22.0 ],
					"style" : "",
					"text" : "send~ analysis",
					"varname" : "send~_1"
				}

			}
, 			{
				"box" : 				{
					"clipheight" : 91.0,
					"data" : 					{
						"clips" : [ 							{
								"filename" : "Re-Zero Episode 18 Insert Song『REM (Inori Minase) - Wishing』.mp3",
								"filekind" : "audiofile",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 1,
								"content_state" : 								{
									"quality" : [ "basic" ],
									"pitchshift" : [ 1.0 ],
									"basictuning" : [ 440 ],
									"speed" : [ 1.0 ],
									"play" : [ 0 ],
									"originallengthms" : [ 0.0 ],
									"originaltempo" : [ 120.0 ],
									"originallength" : [ 0.0, "ticks" ],
									"pitchcorrection" : [ 0 ],
									"mode" : [ "basic" ],
									"formant" : [ 1.0 ],
									"followglobaltempo" : [ 0 ],
									"timestretch" : [ 0 ],
									"formantcorrection" : [ 0 ],
									"slurtime" : [ 0.0 ]
								}

							}
 ]
					}
,
					"id" : "obj-44",
					"maxclass" : "playlist~",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"patching_rect" : [ 950.5, 413.333344, 150.0, 92.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-290",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 959.0, 380.0, 96.0, 22.0 ],
					"style" : "",
					"text" : "partial_test 0.25",
					"varname" : "test_partial"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-131",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 199.0, 500.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2275",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 327.5, 195.0, 103.0, 22.0 ],
					"style" : "",
					"text" : "receive~ analysis"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2274",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 39.0, 380.0, 300.0, 100.0 ],
					"sono" : 1,
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2273",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 372.0, 242.0, 316.0, 238.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2272",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 248.0, 37.0, 20.0 ],
					"style" : "",
					"text" : "1.2\n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2271",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 325.0, 30.0, 20.0 ],
					"style" : "",
					"text" : "0.\n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2270",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 39.0, 345.5, 18.0, 20.0 ],
					"style" : "",
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2269",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 307.0, 345.5, 43.0, 20.0 ],
					"style" : "",
					"text" : "20khz"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2267",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 340.0, 242.0, 19.0, 103.0 ],
					"style" : "",
					"text" : "amplitude"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2265",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 130.0, 345.5, 150.0, 20.0 ],
					"style" : "",
					"text" : "frequency"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 39.0, 242.0, 300.0, 100.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 703.0, 360.0, 205.0, 131.199997 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 39.0, 502.099976, 80.0, 22.0 ],
					"style" : "",
					"text" : "receive~ freq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 39.0, 597.0, 45.0, 45.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"display_range" : [ -70.0, 32.0 ],
					"id" : "obj-19",
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 39.0, 536.0, 136.0, 49.0 ],
					"presentation_rect" : [ 0.0, 0.0, 50.0, 49.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_mmin" : -70.0,
							"parameter_mmax" : 32.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 703.0, 146.0, 79.0, 23.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "dict settings",
					"varname" : "settings_dict"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 703.0, 329.0, 77.0, 23.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "dict presets",
					"varname" : "presets_dict"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 10.0, 180.0, 130.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "frequency_control.js",
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "js frequency_control.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 791.666687, 98.666672, 50.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "util.js",
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "js util.js"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 923.0, 146.0, 92.0, 23.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "dict keyvalues",
					"varname" : "keyvalues_dict"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 923.0, 180.0, 205.0, 131.199997 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 703.0, 180.0, 205.0, 131.199997 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "" ],
					"patching_rect" : [ 791.666687, 146.0, 76.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "settings.js",
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "js settings.js",
					"varname" : "settings_js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 776.0, 68.0, 75.0, 22.0 ],
					"style" : "",
					"text" : "autowatch 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 703.0, 110.0, 64.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "setup.js",
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "js setup.js",
					"varname" : "setup_js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 703.0, 74.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 703.0, 46.0, 60.0, 22.0 ],
					"style" : "",
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 149.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "mtof"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 42.0, 672.0, 98.0 ],
					"presentation_rect" : [ 0.0, 0.0, 336.0, 53.0 ],
					"style" : "",
					"varname" : "midi_keyboard"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_0[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-168",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_1[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-169",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 260.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_2[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 385.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_3[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_4[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_0[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-178",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_1[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-179",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 260.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_2[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-180",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 385.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_3[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_4[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-187",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_0[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-188",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_1[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-189",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 260.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_2[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 385.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_3[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-191",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_4[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-197",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_0[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-198",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_1[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-199",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 260.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_2[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-200",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 385.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_3[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-201",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_4[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-208",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_0[5]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-209",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_1[5]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-210",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 260.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_2[5]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-211",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 385.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_3[5]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-212",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_4[5]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-218",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_0[6]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-219",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_1[6]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-220",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 260.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_2[6]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-221",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 385.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_3[6]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-222",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_4[6]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-228",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_0[7]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-229",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_1[7]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-230",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 260.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_2[7]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-231",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 385.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_3[7]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-232",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_4[7]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-238",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_0[8]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-239",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_1[8]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-240",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 260.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_2[8]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-241",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 385.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_3[8]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-242",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_4[8]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-248",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_0[9]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-249",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_1[9]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-250",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 260.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_2[9]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-251",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 385.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_3[9]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-252",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_4[9]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-258",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_0[10]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-259",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_1[10]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-260",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 260.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_2[10]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-261",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 385.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_3[10]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-262",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_4[10]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-263",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-264",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-265",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 260.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-266",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 385.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-267",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-268",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_0[11]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-269",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_1[11]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-270",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 260.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_2[11]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-271",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 385.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_3[11]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-272",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 667.0, 100.0, 22.0 ],
					"style" : "",
					"text" : "partial 0.2",
					"varname" : "partial_4[11]"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 785.5, 132.0, 801.166687, 132.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 785.5, 105.0, 690.0, 105.0, 690.0, 165.0, 45.0, 165.0, 45.0, 174.0, 19.5, 174.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-207", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2273", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 337.0, 228.0, 381.5, 228.0 ],
					"source" : [ "obj-2275", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2274", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 337.0, 228.0, 21.0, 228.0, 21.0, 375.0, 48.5, 375.0 ],
					"source" : [ "obj-2275", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 337.0, 228.0, 48.5, 228.0 ],
					"source" : [ "obj-2275", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-19" : [ "live.gain~", "live.gain~", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "partial.maxpat",
				"bootpath" : "D:/school/year 2/msp/ryan_color_organ/main/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "setup.js",
				"bootpath" : "D:/school/year 2/msp/ryan_color_organ/main/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "settings.js",
				"bootpath" : "D:/school/year 2/msp/ryan_color_organ/main/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "util.js",
				"bootpath" : "D:/school/year 2/msp/ryan_color_organ/main/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "frequency_control.js",
				"bootpath" : "D:/school/year 2/msp/ryan_color_organ/main/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "partial_test.maxpat",
				"bootpath" : "D:/school/year 2/msp/ryan_color_organ/main/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Re-Zero Episode 18 Insert Song『REM (Inori Minase) - Wishing』.mp3",
				"bootpath" : "D:/school/year 2/msp/ryan_color_organ/main/media",
				"type" : "Mp3 ",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
