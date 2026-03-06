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
                    "id": "obj-2",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 480.0, 192.0, 32.0, 35.0 ],
                    "text": "adc~"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 472.0, 272.0, 45.0, 45.0 ],
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
                    "patching_rect": [ 8.0, -8.0, 896.0, 168.0 ],
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
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-2", 0 ]
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