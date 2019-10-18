# Parrot

![Parrot](Parrot.png)

Parrot is a [Max for Live](https://www.ableton.com/en/live/max-for-live/) analyzer that overlays the spectral output of an instrument (e.g., a synthesizer) with a sample, with the goal of making it easier to synthesize sampled sounds by manipulating the synthesizer until the spectral outputs match.
For example, to synthesize a snare drum, you'd setup a snare sample in Parrot and adjust your synthesizer until its spectral output matches the sample.

## Details

Parrot includes two Max for Live patches: Parrot and ParrotNote.

### Parrot

Parrot is a Max for Live *audio effect* that includes the main interface with sample playback controls, and the overlaid spectral output.

## ParrotNote

ParrotNote is a Max for Live *MIDI effect* that routes the incoming MIDI note to the Parrot audio effect, so that Parrot plays the sample at the same time that the synthesizer receives the incoming MIDI note. ParrotNote works around the fact that Max for Live audio effects cannot receive MIDI input directly.

## Setup

To use Parrot, insert ParrotNote to the left of the synthesizer, and Parrot to the right of the synthesizer.

## Interface

### ParrotNote

ParrotNote's interface is very simple.
