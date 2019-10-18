# Parrot

![Parrot](Parrot.png)

Parrot is a [Max for Live](https://www.ableton.com/en/live/max-for-live/) analyzer that overlays the spectral output of an instrument (for example, a synthesizer) and a sample, with the intention of making it easier to synthesize sampled sounds by manipulating the synthesizer until the spectral outputs match.

For example, to synthesize a snare drum, you'd setup a snare sample in Parrot and adjust your synthesizer until its spectral output matches the sample.

## Details

Parrot includes two Max for Live patches: **Parrot** and **ParrotNote**.

### Parrot

Parrot is a Max for Live *audio effect* that includes the main interface with sample playback controls, and the overlaid spectral output.

## ParrotNote

ParrotNote is a Max for Live *MIDI effect* that routes the incoming MIDI note to Parrot, the audio effect, so that Parrot can play the sample at the same time that the synthesizer receives the incoming MIDI note. In other words, ParrotNote works around the fact that Max for Live audio effects cannot receive MIDI input directly.

## Setup

To use Parrot, insert ParrotNote to the left of an instrument and Parrot to the right of the instrument. To load a sample, drag it onto the waveform box.

## Interface

### ParrotNote

ParrotNote's interface shows the pitch and velocity of the most recent MIDI note. The button outputs the MIDI note.

### Parrot

#### Analyzer

- `Both` / `DAC` / `Sample`: Select whether to overlay the DAC and Sample (`Both`), or display only the DAC or sample.
- `Spectrum` / `Meter`: Choose between two ways of visualizing the spectral output.

#### Sample Playback

- The button plays the sample.
- To load a sample, drag it onto the waveform box.
- `Mute`: Toggle whether the sample's audio is output.
- Attack and decay envelope in `ms`.
