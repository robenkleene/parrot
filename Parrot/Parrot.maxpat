{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "openrect": [ 134.0, 164.0, 554.0, 169.0 ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "devicewidth": 554.0,
        "subpatcher_template": "roben-kleene-max-for-live",
        "boxes": [
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 122.0, 81.0, 93.0, 22.0 ],
                    "text": "open cello-f2.aif"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 228.0, 49.0, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 228.0, 81.0, 156.0, 22.0 ],
                    "text": "sfplay~ @audiofile vibes-a1"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 228.0, 13.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 5.0, 81.0, 35.0, 22.0 ],
                    "text": "adc~"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 5.0, 328.0, 45.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 8.0, 8.0, 48.0, 48.0 ]
                }
            },
            {
                "box": {
                    "args": [ "#0" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "UiPlayer.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 5.0, 137.0, 489.0, 168.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 64.0, 0.0, 489.0, 168.0 ],
                    "varname": "Player",
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-1::obj-14": [ "Gain", "Gain", 0 ],
            "obj-1::obj-23": [ "Decay", "Decay", 0 ],
            "obj-1::obj-24": [ "Attack", "Attack", 0 ],
            "obj-1::obj-4::obj-4::obj-35": [ "Sample", "live.drop", 0 ],
            "obj-1::obj-7": [ "GainSlider", "GainSlider", 0 ],
            "obj-1::obj-70": [ "View", "View", 0 ],
            "obj-1::obj-clear": [ "Clear", "Clear", 0 ],
            "obj-1::obj-freeze": [ "Freeze", "Freeze", 0 ],
            "obj-1::obj-mix": [ "Mix", "A/S", 50 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}