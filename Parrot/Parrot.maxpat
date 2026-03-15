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
        "openrect": [ 134.0, 161.0, 544.0, 175.0 ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "devicewidth": 544.0,
        "subpatcher_template": "roben-kleene-max-for-live",
        "boxes": [
            {
                "box": {
                    "id": "obj-33",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 225.0, 29.0, 150.0, 74.0 ],
                    "text": "Note due to zero crossing detection, test audio will actually test both (but a sample won't be loaded until test sample is fired.)"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 154.0, 81.0, 61.0, 22.0 ],
                    "text": "test audio"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 73.0, 81.0, 70.0, 22.0 ],
                    "text": "test sample"
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
                    "patching_rect": [ 5.0, 137.0, 476.0, 168.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 64.0, 0.0, 480.0, 168.0 ],
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
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-6", 0 ]
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
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}