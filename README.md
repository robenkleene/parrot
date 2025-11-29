# Parrot

![Parrot](Parrot.png)

Parrot is a [Max for Live](https://www.ableton.com/en/live/max-for-live/) analyzer designed to assist in recreating sampled sounds with a synthesizer.

It overlays the spectral output of an instrument (for example, a synthesizer) and a sample. The idea is to then manually manipulate the synthesizer until the spectral output matches the sample.  For example, to synthesize a snare drum, you'd setup a snare sample in Parrot and adjust your synthesizer until its spectral output matches the sample.

The technique of using the spectral output of a sound to replicate it through synthesis is inspired by [*Welsh's Synthesizer Cookbook*](http://synthesizer-cookbook.com/).

### Parrot

Parrot is a Max for Live *audio effect* that includes the main interface with sample playback controls, and the overlaid spectral output.

## Setup

1. Insert **Parrot** to the right of the instrument.
2. Load a sample by dragging it onto the waveform box.
3. The spectral output in Parrot will show the output of the synthesizer overlaid with the output of the sample.

## Syncing Playback

To sync the two waveforms, playback is triggered on transient detection for the initial playback, and then it waits until the envelope has finished before triggering playback again. So set the envelope to the duration of the sample to be able to trigger playback in succession quickly.

## Installation

### Freezing the Devices

Before the device is added to the `User Library` in Ableton Live or Ableton Push, the device (`.amxd`) should be frozen.

The latest version of the frozen device can be downloaded from [the Parrot page on the Max for Live site](https://maxforlive.com/library/device/5797/parrot).

The device can be frozen manually by following these steps:

1. Click the disclosure icon in the upper right of each device and choose `Edit in Max`.
2. In the Max window, click the `Freeze Device` icon in the bottom bar that looks like a snow flake, then choose `File > Save As...` to save the frozen device to a temporary location.

Note that the frozen files can be deleted after the devices has been added to the `User Library`.

### Installing in Ableton Live

Drag the frozen `Parrot.amxd` to `Ableton/User Library/Presets/Audio Effects/Max Audio Effect/`

### Standalone Mode

Parrot can also be opened in standalone mode by opening the `Parrot/Parrot.maxpat`  outside of Ableton Live.

## Interface

### Parrot

#### Analyzer

- `Both` / `Audio` / `Sample`: Select whether to overlay the audio and sample (`Both`), or display only the audio or the sample.

#### Sample Playback

- To load a sample, drag it onto the waveform box.
- `Attack`: The sample envelope attack.
- `Decay`: The sample envelope decay.
- `Gain`: The sample playback volume.
- The button plays the sample.
- `Mute`: Toggle whether the sample's audio is output.
- `Clear`: Clear the sample.
