{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "openrect": [ 42.0, 79.0, 968.0, 171.0 ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "default_fontsize": 10.0,
        "default_fontname": "Arial Bold",
        "gridsize": [ 8.0, 8.0 ],
        "gridsnaponopen": 2,
        "objectsnaponopen": 0,
        "devicewidth": 968.0,
        "subpatcher_template": "roben-kleene-max-for-live",
        "boxes": [
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 480.0, 192.0, 32.0, 20.0 ],
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
                    "presentation_rect": [ 64.0, 0.0, 896.0, 168.0 ],
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
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-2", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-1::obj-10": [ "AudioMute", "Mute", 0 ],
            "obj-1::obj-12": [ "SampleMute", "Mute", 0 ],
            "obj-1::obj-13": [ "Clear", "Clear", 0 ],
            "obj-1::obj-14": [ "Gain", "Gain", 0 ],
            "obj-1::obj-2::obj-23": [ "Decay", "Decay", 0 ],
            "obj-1::obj-2::obj-24": [ "Attack", "Attack", 0 ],
            "obj-1::obj-3": [ "View", "View", 0 ],
            "obj-1::obj-4::obj-4::obj-35": [ "Sample", "live.drop", 0 ],
            "obj-1::obj-7": [ "GainSlider", "GainSlider", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}